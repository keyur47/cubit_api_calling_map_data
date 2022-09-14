import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin/repository/api_repository.dart';
import 'package:signin/cubit/cricket_cubit_state.dart';
import 'package:signin/model/failuer_model.dart';
import 'package:signin/model/profiledata_model.dart';

class CricketFetchCubit extends Cubit<CricketFetchState> {
  CricketFetchCubit() : super(CricketFetchInitial());

  Future<void> fetchCricketApi() async {

    emit(CricketFetchLoading());

    try {
      final List<ProfileData>? cricketList = await ApiRepository().getCricketList();
      emit(CricketFetchLoaded(cricketList: cricketList!));
    } on Failuer catch (e) {
      emit(CricketFetchError(failuer: e));
    } catch (e,st) {
      log("cubitError==>> $e ==> $st");
    }
  }

}
