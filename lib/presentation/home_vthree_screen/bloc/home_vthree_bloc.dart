import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hari_s_application3/presentation/home_vthree_screen/models/home_vthree_model.dart';
part 'home_vthree_event.dart';
part 'home_vthree_state.dart';

/// A bloc that manages the state of a HomeVthree according to the event that is dispatched to it.
class HomeVthreeBloc extends Bloc<HomeVthreeEvent, HomeVthreeState> {
  HomeVthreeBloc(HomeVthreeState initialState) : super(initialState) {
    on<HomeVthreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeVthreeInitialEvent event,
    Emitter<HomeVthreeState> emit,
  ) async {}
}
