import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class MapboxPlaces with ChangeNotifier {
  // Future<void> getDataOfLoc({Map queryParameters}) async {
  //   final url = Uri.https(
  //       "bewaretravelsafe.herokuapp.com", "/api/v1/data", queryParameters);

  //   try {
  //     final response = await http.get(
  //       url,
  //       headers: {
  //         'x-auth-token': userToken,
  //       },
  //     );

  //     final extractedData = json.decode(response.body);
  //     List<GetData> _loadedLoc = [];
  //     _loadedLoc = (extractedData['data'] as List)
  //         .map((i) => GetData.fromJson(i))
  //         .toList();
  //     _getDataofLoc = _loadedLoc;
  //     print(
  //         '**************************************************************************************************************************************************************************************************************');

  //     print(_getDataofLoc.toList());
  //     print(
  //         '**************************************************************************************************************************************************************************************************************');

  //     notifyListeners();
  //   } on NoSuchMethodError {} catch (error) {
  //     //throw (error);
  //   }
  // }
}
