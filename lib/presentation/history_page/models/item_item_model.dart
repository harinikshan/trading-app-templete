import '../../../core/app_export.dart';/// This class is used in the [item_item_widget] screen.
class ItemItemModel {ItemItemModel({this.trashImage, this.twtr, this.twitterInc, this.twitterImage, this.priceText, this.fastForwardImage, this.percentText, this.id, }) { trashImage = trashImage  ?? ImageConstant.imgTrash;twtr = twtr  ?? "TWTR";twitterInc = twitterInc  ?? "Twitter Inc.";twitterImage = twitterImage  ?? ImageConstant.imgChartBlue70032x80;priceText = priceText  ?? "63.98";fastForwardImage = fastForwardImage  ?? ImageConstant.imgForwardBlue700;percentText = percentText  ?? "0.23%";id = id  ?? ""; }

String? trashImage;

String? twtr;

String? twitterInc;

String? twitterImage;

String? priceText;

String? fastForwardImage;

String? percentText;

String? id;

 }
