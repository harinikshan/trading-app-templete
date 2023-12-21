import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hari_s_application3/presentation/home_vtwo_screen/models/home_vtwo_model.dart';
part 'home_vtwo_event.dart';
part 'home_vtwo_state.dart';

/// A bloc that manages the state of a HomeVtwo according to the event that is dispatched to it.
class HomeVtwoBloc extends Bloc<HomeVtwoEvent, HomeVtwoState> {
  HomeVtwoBloc(HomeVtwoState initialState) : super(initialState) {
    on<HomeVtwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeVtwoInitialEvent event,
    Emitter<HomeVtwoState> emit,
  ) async {}
}
