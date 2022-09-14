import 'dart:developer';
import 'package:signin/model/profiledata_model.dart';
import 'package:signin/service/api_service.dart';


class ApiRepository {
  Future<List<ProfileData>?> getCricketList() async {
    final response = await ApiService().getCricketData();
    log("response repository====>${response[0].id}");
    return response;
  }
}
