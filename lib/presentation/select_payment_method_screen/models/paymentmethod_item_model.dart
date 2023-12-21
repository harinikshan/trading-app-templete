import '../../../core/app_export.dart';/// This class is used in the [paymentmethod_item_widget] screen.
class PaymentmethodItemModel {PaymentmethodItemModel({this.iconImage, this.titleText, this.descriptionText, this.id, }) { iconImage = iconImage  ?? ImageConstant.imgCibApplePay;titleText = titleText  ?? "Apple Pay";descriptionText = descriptionText  ?? "Connect your Apple Pay";id = id  ?? ""; }

String? iconImage;

String? titleText;

String? descriptionText;

String? id;

 }
