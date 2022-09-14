import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:signin/model/profiledata_model.dart';

class ApiService {
  Future<List<ProfileData>> getCricketData() async {
    try {
      final response = await http.get(
        Uri.parse(
            "https://api.spacexdata.com/v3/rockets"),
      );
      log("ProfileData ===>${response.body}");
      List dataList =cricketFromJson(response.body);
      log('dataList 00: ${dataList.length}');
      log('dataList 01: ${dataList.first.id}');
      return cricketFromJson(response.body);
    } catch (e, st) {
      print("====e${e}===>>>>>${st}");
    }
    return [];
  }
}
