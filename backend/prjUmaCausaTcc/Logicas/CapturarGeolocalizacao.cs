using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;

namespace prjUmaCausaTcc.Logicas
{
    public class CapturarGeolocalizacao
    {
        string apiKey = "AIzaSyAEQaNYEZ69GfWqaatrh4gUqHCTloZ2nd8";

        public (string latitude, string longitude) DefinirCoordenadas(string endereco)
        {
            string latitude = "";
            string longitude = "";

            // Codifica o endereço para substituir os caracteres especiais
            string encodedAddress = WebUtility.UrlEncode(endereco);

            // Monta a URL da requisição
            string url = $"https://maps.googleapis.com/maps/api/geocode/json?address={encodedAddress}&key={apiKey}";

            // Faz a requisição HTTP
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();

            // Lê a resposta JSON
            using (StreamReader reader = new StreamReader(response.GetResponseStream()))
            {
                string jsonResponse = reader.ReadToEnd();

                // Analisa a resposta JSON para obter as coordenadas
                dynamic result = Newtonsoft.Json.JsonConvert.DeserializeObject(jsonResponse);
                string status = result.status;

                if (status == "OK")
                {
                    latitude = result.results[0].geometry.location.lat;
                    longitude = result.results[0].geometry.location.lng;
                }
            }

            response.Close();

            return (latitude, longitude);

        }
    }
}