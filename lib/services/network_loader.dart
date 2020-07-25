import 'dart:convert';
import 'package:help_me/models/first_aid_data_model.dart';
import 'package:help_me/models/precautions_data_model.dart';
import 'package:http/http.dart';


//Get Data from the API
class NetworkLoader {
   String firstAidURL = "https://help--me.herokuapp.com/api/v1/aid";
   String precautionsURL = "https://help--me.herokuapp.com/api/v1/precautions";
  Future<FirstAidDataRepository> getFirstAidData() async {
    List firstAidData;
    await get(firstAidURL).then((response) {
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print(data);
        firstAidData = List.from(data['data']);
      } else {
        throw response;
      }
    });
    return FirstAidDataRepository(firstAidData);
  }
  Future<PrecautionsDataRepository> getPrecautionsData() async {
    List precautionsData;
    await get(precautionsURL).then((response) {
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        precautionsData = List.from(data['data']);
      } else {
        throw response;
      }
    });
    return PrecautionsDataRepository(precautionsData);
  }
}
