import 'package:flutter/material.dart';
import 'package:hari_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:hari_s_application3/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:hari_s_application3/presentation/onboarding_get_started_screen/onboarding_get_started_screen.dart';
import 'package:hari_s_application3/presentation/sign_up_empty_state_screen/sign_up_empty_state_screen.dart';
import 'package:hari_s_application3/presentation/sign_up_active_state_screen/sign_up_active_state_screen.dart';
import 'package:hari_s_application3/presentation/login_empty_state_screen/login_empty_state_screen.dart';
import 'package:hari_s_application3/presentation/login_active_state_screen/login_active_state_screen.dart';
import 'package:hari_s_application3/presentation/otp_authentication_screen/otp_authentication_screen.dart';
import 'package:hari_s_application3/presentation/otp_authentication_phone_number_screen/otp_authentication_phone_number_screen.dart';
import 'package:hari_s_application3/presentation/otp_authentication_code_screen/otp_authentication_code_screen.dart';
import 'package:hari_s_application3/presentation/create_authentication_face_id_screen/create_authentication_face_id_screen.dart';
import 'package:hari_s_application3/presentation/create_authentication_fingerprint_screen/create_authentication_fingerprint_screen.dart';
import 'package:hari_s_application3/presentation/create_authentication_pin_screen/create_authentication_pin_screen.dart';
import 'package:hari_s_application3/presentation/password_recovery_phone_number_screen/password_recovery_phone_number_screen.dart';
import 'package:hari_s_application3/presentation/password_recovery_email_screen/password_recovery_email_screen.dart';
import 'package:hari_s_application3/presentation/verify_otp_screen/verify_otp_screen.dart';
import 'package:hari_s_application3/presentation/home_vone_container_screen/home_vone_container_screen.dart';
import 'package:hari_s_application3/presentation/home_vtwo_screen/home_vtwo_screen.dart';
import 'package:hari_s_application3/presentation/home_vthree_screen/home_vthree_screen.dart';
import 'package:hari_s_application3/presentation/portfolio_vone_screen/portfolio_vone_screen.dart';
import 'package:hari_s_application3/presentation/portfolio_v1_scroll_screen/portfolio_v1_scroll_screen.dart';
import 'package:hari_s_application3/presentation/portfolio_stock_detail_vone_tab_container_screen/portfolio_stock_detail_vone_tab_container_screen.dart';
import 'package:hari_s_application3/presentation/portfolio_stock_detail_v2_scroll_tab_container_screen/portfolio_stock_detail_v2_scroll_tab_container_screen.dart';
import 'package:hari_s_application3/presentation/exchange_buy_stock_active_state_tab_container_screen/exchange_buy_stock_active_state_tab_container_screen.dart';
import 'package:hari_s_application3/presentation/select_stocks_screen/select_stocks_screen.dart';
import 'package:hari_s_application3/presentation/buy_stock_screen/buy_stock_screen.dart';
import 'package:hari_s_application3/presentation/select_payment_method_screen/select_payment_method_screen.dart';
import 'package:hari_s_application3/presentation/confirm_details_screen/confirm_details_screen.dart';
import 'package:hari_s_application3/presentation/success_screen/success_screen.dart';
import 'package:hari_s_application3/presentation/history_calendar_tab_container_screen/history_calendar_tab_container_screen.dart';
import 'package:hari_s_application3/presentation/my_account_screen/my_account_screen.dart';
import 'package:hari_s_application3/presentation/language_screen/language_screen.dart';
import 'package:hari_s_application3/presentation/settings_screen/settings_screen.dart';
import 'package:hari_s_application3/presentation/referral_code_screen/referral_code_screen.dart';
import 'package:hari_s_application3/presentation/faq_screen/faq_screen.dart';
import 'package:hari_s_application3/presentation/faq_one_screen/faq_one_screen.dart';
import 'package:hari_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String onboardingGetStartedScreen =
      '/onboarding_get_started_screen';

  static const String signUpEmptyStateScreen = '/sign_up_empty_state_screen';

  static const String signUpActiveStateScreen = '/sign_up_active_state_screen';

  static const String loginEmptyStateScreen = '/login_empty_state_screen';

  static const String loginActiveStateScreen = '/login_active_state_screen';

  static const String otpAuthenticationScreen = '/otp_authentication_screen';

  static const String otpAuthenticationPhoneNumberScreen =
      '/otp_authentication_phone_number_screen';

  static const String otpAuthenticationCodeScreen =
      '/otp_authentication_code_screen';

  static const String createAuthenticationFaceIdScreen =
      '/create_authentication_face_id_screen';

  static const String createAuthenticationFingerprintScreen =
      '/create_authentication_fingerprint_screen';

  static const String createAuthenticationPinScreen =
      '/create_authentication_pin_screen';

  static const String passwordRecoveryPhoneNumberScreen =
      '/password_recovery_phone_number_screen';

  static const String passwordRecoveryEmailScreen =
      '/password_recovery_email_screen';

  static const String verifyOtpScreen = '/verify_otp_screen';

  static const String homeVonePage = '/home_vone_page';

  static const String homeVoneContainerScreen = '/home_vone_container_screen';

  static const String homeVtwoScreen = '/home_vtwo_screen';

  static const String homeVthreeScreen = '/home_vthree_screen';

  static const String portfolioVoneScreen = '/portfolio_vone_screen';

  static const String portfolioV1ScrollScreen = '/portfolio_v1_scroll_screen';

  static const String portfolioVtwoPage = '/portfolio_vtwo_page';

  static const String portfolioStockDetailVonePage =
      '/portfolio_stock_detail_vone_page';

  static const String portfolioStockDetailVoneTabContainerScreen =
      '/portfolio_stock_detail_vone_tab_container_screen';

  static const String portfolioStockDetailVtwoPage =
      '/portfolio_stock_detail_vtwo_page';

  static const String portfolioStockDetailV2ScrollPage =
      '/portfolio_stock_detail_v2_scroll_page';

  static const String portfolioStockDetailV2ScrollTabContainerScreen =
      '/portfolio_stock_detail_v2_scroll_tab_container_screen';

  static const String exchangeBuyStockActiveStatePage =
      '/exchange_buy_stock_active_state_page';

  static const String exchangeBuyStockActiveStateTabContainerScreen =
      '/exchange_buy_stock_active_state_tab_container_screen';

  static const String exchangeBuyStockActiveState1Page =
      '/exchange_buy_stock_active_state1_page';

  static const String selectStocksScreen = '/select_stocks_screen';

  static const String buyStockScreen = '/buy_stock_screen';

  static const String selectPaymentMethodScreen =
      '/select_payment_method_screen';

  static const String confirmDetailsScreen = '/confirm_details_screen';

  static const String successScreen = '/success_screen';

  static const String noOrderPage = '/no_order_page';

  static const String noOrderTabContainerPage = '/no_order_tab_container_page';

  static const String historyPage = '/history_page';

  static const String historyCalendarPage = '/history_calendar_page';

  static const String historyCalendarTabContainerScreen =
      '/history_calendar_tab_container_screen';

  static const String myAccountScreen = '/my_account_screen';

  static const String profilePage = '/profile_page';

  static const String languageScreen = '/language_screen';

  static const String settingsScreen = '/settings_screen';

  static const String referralCodeScreen = '/referral_code_screen';

  static const String faqScreen = '/faq_screen';

  static const String faqOneScreen = '/faq_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingScreen: OnboardingScreen.builder,
        onboardingGetStartedScreen: OnboardingGetStartedScreen.builder,
        signUpEmptyStateScreen: SignUpEmptyStateScreen.builder,
        signUpActiveStateScreen: SignUpActiveStateScreen.builder,
        loginEmptyStateScreen: LoginEmptyStateScreen.builder,
        loginActiveStateScreen: LoginActiveStateScreen.builder,
        otpAuthenticationScreen: OtpAuthenticationScreen.builder,
        otpAuthenticationPhoneNumberScreen:
            OtpAuthenticationPhoneNumberScreen.builder,
        otpAuthenticationCodeScreen: OtpAuthenticationCodeScreen.builder,
        createAuthenticationFaceIdScreen:
            CreateAuthenticationFaceIdScreen.builder,
        createAuthenticationFingerprintScreen:
            CreateAuthenticationFingerprintScreen.builder,
        createAuthenticationPinScreen: CreateAuthenticationPinScreen.builder,
        passwordRecoveryPhoneNumberScreen:
            PasswordRecoveryPhoneNumberScreen.builder,
        passwordRecoveryEmailScreen: PasswordRecoveryEmailScreen.builder,
        verifyOtpScreen: VerifyOtpScreen.builder,
        homeVoneContainerScreen: HomeVoneContainerScreen.builder,
        homeVtwoScreen: HomeVtwoScreen.builder,
        homeVthreeScreen: HomeVthreeScreen.builder,
        portfolioVoneScreen: PortfolioVoneScreen.builder,
        portfolioV1ScrollScreen: PortfolioV1ScrollScreen.builder,
        portfolioStockDetailVoneTabContainerScreen:
            PortfolioStockDetailVoneTabContainerScreen.builder,
        portfolioStockDetailV2ScrollTabContainerScreen:
            PortfolioStockDetailV2ScrollTabContainerScreen.builder,
        exchangeBuyStockActiveStateTabContainerScreen:
            ExchangeBuyStockActiveStateTabContainerScreen.builder,
        selectStocksScreen: SelectStocksScreen.builder,
        buyStockScreen: BuyStockScreen.builder,
        selectPaymentMethodScreen: SelectPaymentMethodScreen.builder,
        confirmDetailsScreen: ConfirmDetailsScreen.builder,
        successScreen: SuccessScreen.builder,
        historyCalendarTabContainerScreen:
            HistoryCalendarTabContainerScreen.builder,
        myAccountScreen: MyAccountScreen.builder,
        languageScreen: LanguageScreen.builder,
        settingsScreen: SettingsScreen.builder,
        referralCodeScreen: ReferralCodeScreen.builder,
        faqScreen: FaqScreen.builder,
        faqOneScreen: FaqOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
