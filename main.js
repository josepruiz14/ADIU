import { requestUtil } from "./utils/requestUtil.js";
import { constants } from "./utils/constants.js";
async function main() {
  pilotsStats({});
  pilotsProgression();
}

async function pilotsStats({}) {
  const pilots = await requestUtil({
    endpoint: constants.ENPOINTS.STANDING_RIDERS,
    params: {
      year: 2023,
      categoryid: constants.MOTOGP_CATEGORY_ID,
    },
    operation: "Get Riders",
  });

  const data = pilots.map((pilot) => {
    return {
      name: pilot.classification_rider_full_name,
      y: pilot.classification_points_id,
      z: 1,
      team: pilot.classification_team_name,
      position: pilot.classification_position,
    };
  });

  data.sort(() => Math.random() - 0.5);

  Highcharts.chart("container", {
    chart: {
      type: "variablepie",
    },
    title: {
      text: "Pilots points",
      align: "left",
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
        name: "countries",
        borderRadius: 5,
        data,
        colors: [
          "#4caefe",
          "#3dc3e8",
          "#2dd9db",
          "#1feeaf",
          "#0ff3a0",
          "#00e887",
          "#23e274",
        ],
      },
    ],
  });
}

async function pilotsProgression() {
  let events = await requestUtil({
    endpoint: constants.ENPOINTS.EVENTS,
    params: { year: 2023 },
  });
  events = events.filter((event) => event.test != 1);
  const series = constants.ridersObject;
  const pointsPerPilot = {};
  console.log(events);
  const fullResults = await Promise.all(
    events.map(async (event) => {
      const race = await requestUtil({
        endpoint: constants.ENPOINTS.FULL_RESULTS,
        params: {
          eventid: event.id,
          categoryid: constants.MOTOGP_CATEGORY_ID,
          session: "RAC",
        },
      });
      return race;
    })
  );

  console.log({ fullResults });

  fullResults.forEach((race) => {
    race.forEach((pilot) => {
      // const race = fullResults[0];
      // const pilot = race[0];
      pointsPerPilot[pilot.classification_rider_full_name] = pointsPerPilot[
        pilot.classification_rider_full_name
      ]
        ? parseInt(pointsPerPilot[pilot.classification_rider_full_name]) +
          parseInt(pilot.points)
        : parseInt(pilot.points);
      const gpDate = pilot.date.split(" ")[0].split("-");
      console.log(race);
      console.log(pointsPerPilot);
      console.log(series);
      const pilotIndex = series.findIndex(
        (pilotObj) => pilotObj.name == pilot.classification_rider_full_name
      );
      console.log(pilotIndex);

      series[pilotIndex]?.data?.push([
        Date.UTC(gpDate[0], parseInt(gpDate[1]) - 1, gpDate[2]),
        pointsPerPilot[pilot.classification_rider_full_name],
      ]);
    });
  });

  console.log({ series });

  Highcharts.chart("container2", {
    chart: {
      type: "spline",
    },
    title: {
      text: "Snow depth at Vikjafjellet, Norway",
    },
    subtitle: {
      text: "Irregular time data in Highcharts JS",
    },
    xAxis: {
      type: "datetime",
      dateTimeLabelFormats: {
        // don't display the year
        month: "%e. %b",
        year: "%b",
      },
      title: {
        text: "Date",
      },
    },
    yAxis: {
      title: {
        text: "Snow depth (m)",
      },
      min: 0,
      max: 300,
    },
    tooltip: {
      headerFormat: "<b>{series.name}</b><br>",
      pointFormat: "{point.x:%e. %b}: {point.y:.2f} points",
    },

    plotOptions: {
      series: {
        marker: {
          enabled: true,
          radius: 2.5,
        },
      },
    },

    colors: [
      "#6CF",
      "#39F",
      "#06C",
      "#036",
      "#000",
      "#F00",
      "#0F0",
      "#00F",
      "#FF0",
      "#F0F",
      "#0FF",
      "#C60",
      "#C06",
      "#60C",
      "#6C0",
      "#909",
      "#933",
      "#963",
      "#996",
      "#366",
      "#369",
      "#639",
      "#693",
      "#936",
      "#963",
    ],
    // Define the data points. All series have a year of 1970/71 in order
    // to be compared on the same x axis. Note that in JavaScript, months start
    // at 0 for January, 1 for February etc.
    series,
  });
}

main();
