// ignore_for_file: must_be_immutable

part of 'referral_code_bloc.dart';

/// Represents the state of ReferralCode in the application.
class ReferralCodeState extends Equatable {
  ReferralCodeState({this.referralCodeModelObj});

  ReferralCodeModel? referralCodeModelObj;

  @override
  List<Object?> get props => [
        referralCodeModelObj,
      ];
  ReferralCodeState copyWith({ReferralCodeModel? referralCodeModelObj}) {
    return ReferralCodeState(
      referralCodeModelObj: referralCodeModelObj ?? this.referralCodeModelObj,
    );
  }
}
