//https://api.ipify.org --> per installare una dependencie: dart pub add nomeLibreria

import "package:http/http.dart" as http;
import "dart:convert";//per importare json
import "models/ip.dart";

const stringUrl = "https://ipapi.co/json";//regione, codice postale e citta

Future<Ip> getIp() async {
  final url = Uri.parse(stringUrl);//parsa la stringa in url perche se no non posso usare la stringa per fare la richiesta
  final res = await http.get(url);//res e una Future<response> -->e un oggetto che prima o poi returnera qualcosa che ha dentro
  //se metto async e await adesso res e una Response
  final Map<String, dynamic> data = json.decode(res.body);
  //data e di tipo dynamic (puo essere di tutto), quindi poniamo che data e una mappa Stringa - valore percge json e coppia chiave valore
  //print(data);
  return Ip(ip: data['ip'], region: data['region'], postalCode: data['postal'], city: data['city']);//ritorno l'oggetto quindi mi stampera "istance of ip", ovverrido il metodo toString che returna l'ip;
}
