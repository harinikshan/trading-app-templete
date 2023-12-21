import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hari_s_application3/presentation/portfolio_vone_screen/models/portfolio_vone_model.dart';
part 'portfolio_vone_event.dart';
part 'portfolio_vone_state.dart';

/// A bloc that manages the state of a PortfolioVone according to the event that is dispatched to it.
class PortfolioVoneBloc extends Bloc<PortfolioVoneEvent, PortfolioVoneState> {
  PortfolioVoneBloc(PortfolioVoneState initialState) : super(initialState) {
    on<PortfolioVoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PortfolioVoneInitialEvent event,
    Emitter<PortfolioVoneState> emit,
  ) async {}
}
