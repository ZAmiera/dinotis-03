// ignore_for_file: prefer_const_constructors
import 'package:dinotis/screens/chat/chat_screen.dart';
import 'package:dinotis/screens/complete_profile_screen.dart/complete_profile_screen.dart';
import 'package:dinotis/screens/details/details_screen.dart';
import 'package:dinotis/screens/forgot_password/forgot_password_screen.dart';
import 'package:dinotis/screens/home_screen/home_screen.dart';
import 'package:dinotis/screens/login_success/login_success_screen.dart';
import 'package:dinotis/screens/otp/otp_screen.dart';
import 'package:dinotis/screens/payments/payments_screen.dart';
import 'package:dinotis/screens/sign_in/sign_in_screen.dart';
import 'package:dinotis/screens/sign_up/sign_up_screen.dart';
import 'package:dinotis/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';


// masukan semua widget yang akan di gunakan
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  ChatScreen.routeName: (context) => ChatScreen(),
  PaymentScreen.routeName: (context) => PaymentScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};