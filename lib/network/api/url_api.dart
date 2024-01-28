import 'dart:developer';
import 'package:http/http.dart' as http;

import '../../model/city_model.dart';
import '../../model/state_model.dart';

class BaseUrl{
static String ipAdress = "192.168.80.238";
static String apiregister = "";
static String apilogin = "";
static String getState = "";
static String getCity = "";

Future<CountryStateModel> getCountriesStates() async {
    try {
      var url = Uri.parse(getState);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        final CountryStateModel responseModel =
            countryStateModelFromJson(response.body);
        return responseModel;
      } else {
        return CountryStateModel(
            error: true,
            msg: 'Something went wrong: ${response.statusCode}',
            data: []);
      }
    } catch (e) {
      log('Exception: ${e.toString()}');
      throw Exception(e.toString());
    }
  }

  Future<CitiesModel> getCities(
      {required String state}) async {
    try {
      var url = Uri.parse("$getCity&state=$state");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        final CitiesModel responseModel = citiesModelFromJson(response.body);
        return responseModel;
      } else {
        return CitiesModel(
            error: true,
            msg: 'Something went wrong: ${response.statusCode}',
            data: []);
      }
    } catch (e) {
      log('Exception: ${e.toString()}');
      throw Exception(e.toString());
    }
  }
}



