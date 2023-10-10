import { requestUtil } from "./utils/requestUtil.js";
import { constants } from "./utils/constants.js";
async function main() {
  const pilots = await requestUtil({
    endpoint: constants.ENPOINTS.STANDING_RIDERS,
    params: {
      year: 2023,
      categoryid: constants.MOTOGP_CATEGORY_ID,
    },
    operation: "Get Riders",
  });

  const data = pilots.map((pilot) => {
    console.log(pilot);
    return {
      name: pilot.classification_rider_full_name,
      y: pilot.classification_points_id,
      z: 10,
      team: pilot.classification_team_name

    };
  
  });
  data.sort(() => Math.random() - 0.5);


  // Data retrieved from https://worldpopulationreview.com/country-rankings/countries-by-density
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

  Highcharts.chart("container2", {
    chart: {
      type: "bar",
    },
    title: {
      text: "Fruit Consumption",
    },
    xAxis: {
      categories: ["Apples", "Bananas", "Oranges"],
    },
    yAxis: {
      title: {
        text: "Fruit eaten",
      },
    },
    series: [
      {
        name: "Jane",
        data: [1, 0, 4],
      },
      {
        name: "John",
        data: [5, 7, 3],
      },
    ],
  });
}

// async function requestUtil({ queryParams }) {
//   const response = await axios.get(constants.MOTOGP_BASE_URL, {});
//   return response.data;
// }

main();
