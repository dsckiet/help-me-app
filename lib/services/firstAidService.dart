import 'dart:convert';

import 'package:help_me/Models/FirstAidDataModel.dart';
import 'package:http/http.dart';

String baseUrl = "https://help--me.herokuapp.com/api/v1/aid";

//get first aid data from the api
class FirstAidData {
  Future<FirsAidDataRepository> getFirstAidData() async {
    List firstAidData;
    await get(baseUrl).then((response) {
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        firstAidData = List.from(data['data']);
      } else {
        throw response;
      }
    });
    return FirsAidDataRepository(firstAidData);
  }
}
