import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:liveasy/models/myLoadApiModel.dart';
import 'package:flutter_config/flutter_config.dart';

Future<List<MyLoadApiDataModel>> runMyLoadApi() async {
  String loadApiUrl = FlutterConfig.get("loadApiUrl").toString();
  var jsonData;
  Uri url = Uri.parse("$loadApiUrl");
  http.Response response = await http.get(url);
  jsonData = await jsonDecode(response.body);
  List<MyLoadApiDataModel> data = [];
  for (var json in jsonData) {
    MyLoadApiDataModel loadData = new MyLoadApiDataModel(
        id: json["id"]== null? "": json["id"],
        loadId: json["loadId"]== null? "": json["loadId"],
        loadingPoint: json["loadingPoint"]==null?"":json["loadingPoint"],
        loadingPointCity: json["loadingPointCity"]== null? "": json["loadingPointCity"],
        loadingPointState: json["loadingPointState"]== null? "": json["loadingPointState"],
        unloadingPoint: json["unloadingPoint"]==null?"":json["unloadingPoint"],
        unloadingPointCity: json["unloadingPointCity"]== null? "": json["unloadingPointCity"],
        truckType:  json["truckType"]== null? "": json["truckType"],
        noOfTrucks: json["noOfTrucks"]== null? "": json["noOfTrucks"],
        status: json["status"]== null? "": json["status"],
        unloadingPointState:json["unloadingPointState"]== null? "": json["unloadingPointState"],
        weight: json["weight"]== null? "": json["weight"],
        productType: json["productType"]== null? "": json["productType"],
        comment: json["comment"]== null? "": json["comment"]);
    data.add(loadData);
  }

  return data;
}
