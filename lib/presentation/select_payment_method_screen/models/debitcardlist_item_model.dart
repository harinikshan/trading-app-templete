import '../../../core/app_export.dart';/// This class is used in the [debitcardlist_item_widget] screen.
class DebitcardlistItemModel {DebitcardlistItemModel({this.iconImage, this.debitCardText, this.investText, this.contrastImage, this.id, }) { iconImage = iconImage  ?? ImageConstant.imgTelevisionPrimary;debitCardText = debitCardText  ?? "Debit Card";investText = investText  ?? "Invest small amounts";contrastImage = contrastImage  ?? ImageConstant.imgContrastPink500;id = id  ?? ""; }

String? iconImage;

String? debitCardText;

String? investText;

String? contrastImage;

String? id;

 }
