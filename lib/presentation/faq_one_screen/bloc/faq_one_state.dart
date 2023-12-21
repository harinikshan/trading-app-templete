// ignore_for_file: must_be_immutable

part of 'faq_one_bloc.dart';

/// Represents the state of FaqOne in the application.
class FaqOneState extends Equatable {
  FaqOneState({
    this.replyController,
    this.faqOneModelObj,
  });

  TextEditingController? replyController;

  FaqOneModel? faqOneModelObj;

  @override
  List<Object?> get props => [
        replyController,
        faqOneModelObj,
      ];
  FaqOneState copyWith({
    TextEditingController? replyController,
    FaqOneModel? faqOneModelObj,
  }) {
    return FaqOneState(
      replyController: replyController ?? this.replyController,
      faqOneModelObj: faqOneModelObj ?? this.faqOneModelObj,
    );
  }
}
