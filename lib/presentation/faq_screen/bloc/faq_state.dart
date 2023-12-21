// ignore_for_file: must_be_immutable

part of 'faq_bloc.dart';

/// Represents the state of Faq in the application.
class FaqState extends Equatable {
  FaqState({
    this.searchController,
    this.faqModelObj,
  });

  TextEditingController? searchController;

  FaqModel? faqModelObj;

  @override
  List<Object?> get props => [
        searchController,
        faqModelObj,
      ];
  FaqState copyWith({
    TextEditingController? searchController,
    FaqModel? faqModelObj,
  }) {
    return FaqState(
      searchController: searchController ?? this.searchController,
      faqModelObj: faqModelObj ?? this.faqModelObj,
    );
  }
}
