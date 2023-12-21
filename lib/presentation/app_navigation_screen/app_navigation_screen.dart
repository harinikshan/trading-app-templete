import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "1.0 Splash Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "1.1 Onboarding".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.onboardingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "1.2 Onboarding - Get Started".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingGetStartedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "2.0 Sign Up - Empty State".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.signUpEmptyStateScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "2.1 Sign Up - Active State".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.signUpActiveStateScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "2.2 Login - Empty State".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginEmptyStateScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "2.3 Login - Active State".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginActiveStateScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "2.4 OTP Authentication".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.otpAuthenticationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "2.5 OTP Authentication - Phone number".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.otpAuthenticationPhoneNumberScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "2.6 OTP Authentication - Code".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.otpAuthenticationCodeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "2.7 Create Authentication - Face ID".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createAuthenticationFaceIdScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "2.8 Create Authentication - Fingerprint".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .createAuthenticationFingerprintScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "2.9 Create Authentication - PIN".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createAuthenticationPinScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "2.10 Password Recovery - Phone Number".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.passwordRecoveryPhoneNumberScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "2.11 Password Recovery - Email".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.passwordRecoveryEmailScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "2.12 Verify OTP".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.verifyOtpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "3.0 Home - VOne - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeVoneContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "3.1 Home - VTwo".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeVtwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "3.2 Home - VThree".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeVthreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "4.0 Portfolio - VOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.portfolioVoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "4.1 Portfolio - V1 - Scroll".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.portfolioV1ScrollScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "4.3 Portfolio - Stock Detail - VOne - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .portfolioStockDetailVoneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "4.5 Portfolio - Stock Detail - V2 - Scroll - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .portfolioStockDetailV2ScrollTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "5.0 Exchange / Buy Stock - Active State - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .exchangeBuyStockActiveStateTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "5.2 Select Stocks".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.selectStocksScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "5.3 Buy Stock".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.buyStockScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "6.1 Select Payment Method".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.selectPaymentMethodScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "6.2 Confirm Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.confirmDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "6.3 Success".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.successScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "7.2 History - Calendar - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.historyCalendarTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "8.1 My Account".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myAccountScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "8.2 Language".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.languageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "8.3 Settings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "8.4 Referral Code".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.referralCodeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "8.5 FAQ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.faqScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "8.5 FAQ One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.faqOneScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
