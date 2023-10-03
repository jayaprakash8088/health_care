import 'package:flutter/material.dart';
import 'package:healthcareapp/presentation/splash_screen/splash_screen.dart';
import 'package:healthcareapp/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:healthcareapp/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:healthcareapp/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:healthcareapp/presentation/onboarding_four_screen/onboarding_four_screen.dart';
import 'package:healthcareapp/presentation/login_screen/login_screen.dart';
import 'package:healthcareapp/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:healthcareapp/presentation/reset_password_email_tab_container_screen/reset_password_email_tab_container_screen.dart';
import 'package:healthcareapp/presentation/reset_password_verify_code_screen/reset_password_verify_code_screen.dart';
import 'package:healthcareapp/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:healthcareapp/presentation/home_container_screen/home_container_screen.dart';
import 'package:healthcareapp/presentation/top_doctor_screen/top_doctor_screen.dart';
import 'package:healthcareapp/presentation/find_doctors_screen/find_doctors_screen.dart';
import 'package:healthcareapp/presentation/doctor_detail_screen/doctor_detail_screen.dart';
import 'package:healthcareapp/presentation/booking_doctor_screen/booking_doctor_screen.dart';
import 'package:healthcareapp/presentation/chat_with_doctor_screen/chat_with_doctor_screen.dart';
import 'package:healthcareapp/presentation/audio_call_screen/audio_call_screen.dart';
import 'package:healthcareapp/presentation/video_call_screen/video_call_screen.dart';
import 'package:healthcareapp/presentation/articles_screen/articles_screen.dart';
import 'package:healthcareapp/presentation/pharmacy_screen/pharmacy_screen.dart';
import 'package:healthcareapp/presentation/drugs_detail_screen/drugs_detail_screen.dart';
import 'package:healthcareapp/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:healthcareapp/presentation/location_screen/location_screen.dart';
import 'package:healthcareapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String onboardingFourScreen = '/onboarding_four_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String resetPasswordEmailPage = '/reset_password_email_page';

  static const String resetPasswordEmailTabContainerScreen =
      '/reset_password_email_tab_container_screen';

  static const String resetPasswordPhonePage = '/reset_password_phone_page';

  static const String resetPasswordVerifyCodeScreen =
      '/reset_password_verify_code_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String topDoctorScreen = '/top_doctor_screen';

  static const String findDoctorsScreen = '/find_doctors_screen';

  static const String doctorDetailScreen = '/doctor_detail_screen';

  static const String bookingDoctorScreen = '/booking_doctor_screen';

  static const String chatWithDoctorScreen = '/chat_with_doctor_screen';

  static const String audioCallScreen = '/audio_call_screen';

  static const String videoCallScreen = '/video_call_screen';

  static const String schedulePage = '/schedule_page';

  static const String scheduleTabContainerPage = '/schedule_tab_container_page';

  static const String messageHistoryPage = '/message_history_page';

  static const String messageHistoryTabContainerPage =
      '/message_history_tab_container_page';

  static const String articlesScreen = '/articles_screen';

  static const String pharmacyScreen = '/pharmacy_screen';

  static const String drugsDetailScreen = '/drugs_detail_screen';

  static const String myCartScreen = '/my_cart_screen';

  static const String locationScreen = '/location_screen';

  static const String profilePage = '/profile_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingOneScreen: OnboardingOneScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        onboardingThreeScreen: OnboardingThreeScreen.builder,
        onboardingFourScreen: OnboardingFourScreen.builder,
        loginScreen: LoginScreen.builder,
        signUpScreen: SignUpScreen.builder,
        resetPasswordEmailTabContainerScreen:
            ResetPasswordEmailTabContainerScreen.builder,
        resetPasswordVerifyCodeScreen: ResetPasswordVerifyCodeScreen.builder,
        createNewPasswordScreen: CreateNewPasswordScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        topDoctorScreen: TopDoctorScreen.builder,
        findDoctorsScreen: FindDoctorsScreen.builder,
        doctorDetailScreen: DoctorDetailScreen.builder,
        bookingDoctorScreen: BookingDoctorScreen.builder,
        chatWithDoctorScreen: ChatWithDoctorScreen.builder,
        audioCallScreen: AudioCallScreen.builder,
        videoCallScreen: VideoCallScreen.builder,
        articlesScreen: ArticlesScreen.builder,
        pharmacyScreen: PharmacyScreen.builder,
        drugsDetailScreen: DrugsDetailScreen.builder,
        myCartScreen: MyCartScreen.builder,
        locationScreen: LocationScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
