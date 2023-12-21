// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'debitcardlist_item_model.dart';import 'paymentmethod_item_model.dart';/// This class defines the variables used in the [select_payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectPaymentMethodModel extends Equatable {SelectPaymentMethodModel({this.debitcardlistItemList = const [], this.paymentmethodItemList = const [], }) {  }

List<DebitcardlistItemModel> debitcardlistItemList;

List<PaymentmethodItemModel> paymentmethodItemList;

SelectPaymentMethodModel copyWith({List<DebitcardlistItemModel>? debitcardlistItemList, List<PaymentmethodItemModel>? paymentmethodItemList, }) { return SelectPaymentMethodModel(
debitcardlistItemList : debitcardlistItemList ?? this.debitcardlistItemList,
paymentmethodItemList : paymentmethodItemList ?? this.paymentmethodItemList,
); } 
@override List<Object?> get props => [debitcardlistItemList,paymentmethodItemList];
 }
