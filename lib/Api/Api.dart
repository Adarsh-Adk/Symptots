import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List> fetchCountries() async {
  final response = await http.get(
      'https://restcountries.eu/rest/v2/',
      headers: {'accept': 'application/json'});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}