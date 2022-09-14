import 'package:equatable/equatable.dart';
import 'package:signin/model/profiledata_model.dart';
import 'package:signin/model/failuer_model.dart';

abstract class CricketFetchState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CricketFetchInitial extends CricketFetchState {}

class CricketFetchLoading extends CricketFetchState {
  @override
  List<Object?> get props => [];
}

class CricketFetchLoaded extends CricketFetchState {
  final List<ProfileData> cricketList;
  CricketFetchLoaded({required this.cricketList});
  @override
  List<Object?> get props => [cricketList];
}

class CricketFetchError extends CricketFetchState {
  final Failuer failuer;

  CricketFetchError({required this.failuer});
  @override
  List<Object?> get props => [];
}
