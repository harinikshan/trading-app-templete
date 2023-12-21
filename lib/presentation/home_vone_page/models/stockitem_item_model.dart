import '../../../core/app_export.dart';/// This class is used in the [stockitem_item_widget] screen.
class StockitemItemModel {StockitemItemModel({this.fb, this.text1, this.text2, this.id, }) { fb = fb  ?? ImageConstant.imgFacebook;text1 = text1  ?? "FB";text2 = text2  ?? "Facebook, Inc";id = id  ?? ""; }

String? fb;

String? text1;

String? text2;

String? id;

 }
