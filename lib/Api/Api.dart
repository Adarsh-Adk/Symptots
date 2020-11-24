import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List> fetchCountries() async {
  final response = await http.get(
      'https://raw.githubusercontent.com/samayo/country-json/master/src/country-by-capital-city.json',
      headers: {'accept': 'application/json'});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}