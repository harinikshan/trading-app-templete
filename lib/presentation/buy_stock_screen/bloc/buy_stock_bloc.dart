import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/suggestions_item_model.dart';import 'package:hari_s_application3/presentation/buy_stock_screen/models/buy_stock_model.dart';part 'buy_stock_event.dart';part 'buy_stock_state.dart';/// A bloc that manages the state of a BuyStock according to the event that is dispatched to it.
class BuyStockBloc extends Bloc<BuyStockEvent, BuyStockState> {BuyStockBloc(BuyStockState initialState) : super(initialState) { on<BuyStockInitialEvent>(_onInitialize); on<UpdateChipViewEvent>(_updateChipView); }

_onInitialize(BuyStockInitialEvent event, Emitter<BuyStockState> emit, ) async  { emit(state.copyWith(buyStockModelObj: state.buyStockModelObj?.copyWith(suggestionsItemList: fillSuggestionsItemList()))); } 
_updateChipView(UpdateChipViewEvent event, Emitter<BuyStockState> emit, ) { List<SuggestionsItemModel> newList = List<SuggestionsItemModel>.from(state.buyStockModelObj!.suggestionsItemList); newList[event.index] = newList[event.index].copyWith(isSelected: event.isSelected); emit(state.copyWith(buyStockModelObj: state.buyStockModelObj?.copyWith(suggestionsItemList: newList))); } 
List<SuggestionsItemModel> fillSuggestionsItemList() { return List.generate(4, (index) => SuggestionsItemModel()); } 
 }
