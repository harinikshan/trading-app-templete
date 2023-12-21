import '../../../core/app_export.dart';/// This class is used in the [stockitem1_item_widget] screen.
class Stockitem1ItemModel {Stockitem1ItemModel({this.imageClass, this.twtr, this.twitterInc, this.name, this.text, this.imageClass1, this.text1, this.id, }) { imageClass = imageClass  ?? ImageConstant.imgTrash;twtr = twtr  ?? "TWTR";twitterInc = twitterInc  ?? "Twitter Inc.";name = name  ?? ImageConstant.imgChartBlue70032x80;text = text  ?? "63.98";imageClass1 = imageClass1  ?? ImageConstant.imgForwardBlue700;text1 = text1  ?? "0.23%";id = id  ?? ""; }

String? imageClass;

String? twtr;

String? twitterInc;

String? name;

String? text;

String? imageClass1;

String? text1;

String? id;

 }
