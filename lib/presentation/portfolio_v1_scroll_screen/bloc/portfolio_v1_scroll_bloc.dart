import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hari_s_application3/presentation/portfolio_v1_scroll_screen/models/portfolio_v1_scroll_model.dart';
part 'portfolio_v1_scroll_event.dart';
part 'portfolio_v1_scroll_state.dart';

/// A bloc that manages the state of a PortfolioV1Scroll according to the event that is dispatched to it.
class PortfolioV1ScrollBloc
    extends Bloc<PortfolioV1ScrollEvent, PortfolioV1ScrollState> {
  PortfolioV1ScrollBloc(PortfolioV1ScrollState initialState)
      : super(initialState) {
    on<PortfolioV1ScrollInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PortfolioV1ScrollInitialEvent event,
    Emitter<PortfolioV1ScrollState> emit,
  ) async {}
}
