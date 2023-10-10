import { constants } from "./constants.js";

export async function requestUtil({ endpoint, params, operation }) {
  let url = `${constants.MOTOGP_BASE_URL}${endpoint}?token=${constants.TOKEN}&`;
  let rqParams = {};
  Object.keys(params).forEach((param, index) => {
    url += `&${param}=${Object.values(params)[index]}`;
    rqParams[param] = Object.values(params)[index];
  });

  try {
    const response = await axios.get(url);
    console.log({
      operation,
      status: response.status,
      rqParams,
      rqUrl: url,
      response: response.data,
    });
    return response.data;
  } catch (error) {
    console.log(error);
  }
}
