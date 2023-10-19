import { constants } from "./constants.js";

export async function requestUtil({ endpoint, body, params, operation }) {
  try {
    console.log(body);
    console.log({ url: constants.MOTOGP_BASE_URL });
    let response;
    switch (operation) {
      case "POST":
        response = await axios.post(constants.MOTOGP_BASE_URL, {
          body: JSON.stringify(body),
        });
        break;
      case "GET":
        break;
    }
    console.log(response);
    return response.data;
  } catch (error) {
    console.log(error);
  }
}
