import { requestUtil } from "./utils/requestUtil.js";
import { addStats } from "./utils/utils.js";
import { constants } from "./utils/constants.js";

const riderStats = {};
let raceNames = [];

async function main() {
  await pilotsOverall({});

  //   const selector = document.getElementById("selector");

  //   const riderLabel = Object.keys(riderStats).reduce((snipet, pilot, index) => {
  //     snipet +=
  //       index > 2
  //         ? `<label><input type="checkbox" name=${pilot} value=option${index}>${pilot}</label>`
  //         : `<label><input type="checkbox" name=${pilot} value=option${index} checked>${pilot}</label>`;
  //     return snipet;
  //   });
  //   selector.innerHTML = `<div class="p-4">
  //   <button id="mostrarOcultar" class="bg-indigo-500 text-white px-4 py-2 rounded-md">Mostrar Opciones</button>
  //   <div id="opciones" class="hidden mt-2 space-y-2">
  //      ${riderLabel}

  //   </div>
  // </div> <script>`;

  //   const botonMostrarOcultar = document.getElementById("mostrarOcultar");

  //   botonMostrarOcultar.addEventListener("click", function () {
  //     const opciones = document.getElementById("opciones");
  //     opciones.classList.toggle("hidden");
  //   });

  //   await pilotsData();
  //   const opciones = document.getElementById("opciones");
  //   const ops = Array.from(
  //     document.querySelectorAll("#opciones input[type=checkbox]")
  //   );
  //   console.log(ops);
  //   const names = ops.map((item) => item.closest("label").innerText);
  //   pilotsProgression({ names: names.slice(0, 3) });

  //   opciones.addEventListener("change", async () => {
  //     const opciones = Array.from(
  //       document.querySelectorAll("#opciones input[type=checkbox]:checked")
  //     );
  //     const names = opciones.map((item) => item.closest("label").innerText);
  //     pilotsProgression({ names });
  //   });
}

async function pilotsOverall({}) {
  const pilots = await requestUtil({
    params: { query: "SELECT * FROM `motogp_world_standing_riders`;" },
    operation: "POST",
  });
  let data = pilots.map((pilot) => {
    riderStats[pilot.rider_full_name] = [];
    return {
      name: pilot.rider_full_name,
      y: parseInt(pilot.points),
      z: 1,
      team: pilot.team_name,
      position: pilot.position,
    };
  });

  data = data.sort(() => Math.random() - 0.5);
  console.log(data);

  try {
    Highcharts.chart("overallPie", {
      chart: {
        type: "pie",
      },
      title: {
        text: "Points per Pilot",
        align: "center",
      },
      tooltip: {
        headerFormat: "",
        pointFormat:
          '<span style="color:{point.color}">\u25CF</span> <b> {point.name}</b><br/>' +
          "Position: <b>{point.position}</b><br/>" +
          "Points: <b>{point.y}</b><br/>" +
          "Team: <b>{point.team}</b><br/>",
      },
      series: [
        {
          minPointSize: 10,
          innerSize: "20%",
          zMin: 0,
          borderRadius: 5,
          data,
        },
      ],
    });
  } catch (error) {
    console.log(error);
  }
  const barSeries = [];
  const constructors = [];
  pilots.forEach((pilot) => {
    const constructor = constructors.find(
      (item) => item.name == pilot.constructor_name
    );
    if (constructor) {
      constructor.y += 1;
    } else {
      constructors.push({ name: pilot.constructor_name, y: 1 });
    }
  });
  console.log(constructors);
  console.log(barSeries);

  // Create the chart
  Highcharts.chart("overallBars", {
    chart: {
      type: "column",
    },
    title: {
      align: "center",
      text: "Points per Team",
    },
    subtitle: {
      align: "left",
      text: "",
    },
    accessibility: {
      announceNewData: {
        enabled: true,
      },
    },
    xAxis: {
      type: "category",
      title: {
        text: "Team",
      },
    },
    yAxis: {
      title: {
        text: "Points",
      },
    },
    legend: {
      enabled: false,
    },
    plotOptions: {
      series: {
        borderWidth: 0,
        dataLabels: {
          enabled: true,
          format: "{point.y:.1f}",
        },
      },
    },

    tooltip: {
      headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
      pointFormat:
        '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}</b> points<br/>',
    },

    series: [
      {
        name: "Team",
        colorByPoint: true,
        data: constructors,
      },
    ],
  });
}

async function pilotsData() {
  let events = await requestUtil({
    endpoint: constants.ENPOINTS.EVENTS,
    params: { year: 2023 },
  });
  events = events.filter((event) => event.test != 1);
  events = events.reverse();
  events.forEach((event) => {
    if (event.year >= 2023) {
      raceNames.push(`S ${event.circuit_name}`);
    }
    raceNames.push(`R ${event.circuit_name}`);
  });
  await Promise.all(
    events.map(async (event) => {
      const sprint = await requestUtil({
        endpoint: constants.ENPOINTS.FULL_RESULTS,
        params: {
          eventid: event.id,
          categoryid: constants.MOTOGP_CATEGORY_ID,
          session: "SPR",
        },
      });

      const race = await requestUtil({
        endpoint: constants.ENPOINTS.FULL_RESULTS,
        params: {
          eventid: event.id,
          categoryid: constants.MOTOGP_CATEGORY_ID,
          session: "RAC",
        },
      });
      addStats({ event: sprint, riderStats });
      addStats({ event: race, riderStats });
      return race;
    })
  );

  Object.keys(riderStats).forEach((pilot) => {
    riderStats[pilot] = riderStats[pilot].sort((a, b) => a.date - b.date);
  });
}

function pilotsProgression({ names }) {
  const stats = names.map((name) => {
    return { name, data: riderStats[name] };
  });
  const pointsData = stats.map((rider) => {
    const points = [];
    rider.data.reduce((accumulated, classification) => {
      const classPoints = accumulated + parseInt(classification.points);
      points.push(classPoints);
      return classPoints;
    }, 0);
    return {
      name: rider.name,
      data: points,
    };
  });

  Highcharts.chart("pilotsProgression", {
    chart: {
      type: "streamgraph",
      marginBottom: 30,
      zoomType: "x",
    },

    title: {
      floating: true,
      align: "left",
      text: "Pilots progression over season",
    },
    subtitle: {
      floating: true,
      align: "left",
      y: 30,
      text: "",
    },

    xAxis: {
      maxPadding: 0,
      type: "category",
      crosshair: true,
      categories: raceNames,
      labels: {
        align: "left",
        rotation: 270,
        overflow: "justify", // Set overflow to 'justify' to allow full text display
      },
      lineWidth: 0,
      margin: 10,
      tickWidth: 0,
    },

    yAxis: {
      visible: false,
      startOnTick: false,
      endOnTick: false,
    },

    legend: {
      enabled: false,
    },

    plotOptions: {
      series: {
        label: {
          minFontSize: 5,
          maxFontSize: 15,
          style: {
            color: "rgba(255,255,255,0.75)",
          },
        },
        accessibility: {
          exposeAsGroupOnly: true,
        },
      },
    },

    series: pointsData,

    exporting: {
      sourceWidth: 800,
      sourceHeight: 600,
    },
  });
}

main();
