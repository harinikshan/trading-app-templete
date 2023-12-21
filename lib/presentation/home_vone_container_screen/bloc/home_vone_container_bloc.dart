import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/home_vone_container_screen/models/home_vone_container_model.dart';part 'home_vone_container_event.dart';part 'home_vone_container_state.dart';/// A bloc that manages the state of a HomeVoneContainer according to the event that is dispatched to it.
class HomeVoneContainerBloc extends Bloc<HomeVoneContainerEvent, HomeVoneContainerState> {HomeVoneContainerBloc(HomeVoneContainerState initialState) : super(initialState) { on<HomeVoneContainerInitialEvent>(_onInitialize); }

_onInitialize(HomeVoneContainerInitialEvent event, Emitter<HomeVoneContainerState> emit, ) async  {  } 
 }
