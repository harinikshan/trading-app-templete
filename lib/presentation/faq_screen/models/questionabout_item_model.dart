import '../../../core/app_export.dart';/// This class is used in the [questionabout_item_widget] screen.
class QuestionaboutItemModel {QuestionaboutItemModel({this.userImage, this.questionsAbout, this.gettingStarted, this.id, }) { userImage = userImage  ?? ImageConstant.imgUserPrimary24x24;questionsAbout = questionsAbout  ?? "Questions about";gettingStarted = gettingStarted  ?? "Getting Started";id = id  ?? ""; }

String? userImage;

String? questionsAbout;

String? gettingStarted;

String? id;

 }
