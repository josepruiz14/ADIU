import { constants } from "./constants.js";

export async function requestUtil({ endpoint, params, operation }) {
  try {
    let response;
    const data = new FormData(); // Usaremos FormData para enviar datos en la solicitud POST
    Object.keys(params).forEach((param) => {
      data.append(param, params[param]);
    });
    response = await fetch(constants.MOTOGP_BASE_URL, {
      method: "POST",
      body: data,
    });
    const responsJSON = await response.json();
    console.log(responsJSON);
    return responsJSON;

    // ... (manejo de la respuesta)
  } catch (error) {
    console.log(error);
  }
}
