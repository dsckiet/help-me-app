// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../domain/first_aid/first_aid.dart';
import '../../domain/precautions/precautions.dart';
import '../auth/google_sign_in_page/intro_screen.dart';
import '../auth/login_form/login_form_screen.dart';
import '../auth/register_form/register_form_screen.dart';
import '../first_aid/first_aid_content_screen.dart';
import '../first_aid/first_aid_screen.dart';
import '../help_alert/help_screen.dart';
import '../home_screen/home_screen.dart';
import '../nearby_healthcare_centres/nearby_hcc.dart';
import '../precautions/precaution_content_page.dart';
import '../precautions/precaution_screen.dart';
import '../share_location/share_location_screen.dart';
import '../user_profile/profile_screen.dart';

class Routes {
  static const String introScreen = '/intro-screen';
  static const String loginScreen = '/login-screen';
  static const String registerScreen = '/register-screen';
  static const String homeScreen = '/home-screen';
  static const String profileScreen = '/profile-screen';
  static const String helpScreen = '/help-screen';
  static const String shareLocationScreen = '/share-location-screen';
  static const String nearbyHcc = '/nearby-hcc';
  static const String precautionScreen = '/precaution-screen';
  static const String precautionsContent = '/precautions-content';
  static const String firstAidScreen = '/';
  static const String firstAidContent = '/first-aid-content';
  static const all = <String>{
    introScreen,
    loginScreen,
    registerScreen,
    homeScreen,
    profileScreen,
    helpScreen,
    shareLocationScreen,
    nearbyHcc,
    precautionScreen,
    precautionsContent,
    firstAidScreen,
    firstAidContent,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.introScreen, page: IntroScreen),
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.registerScreen, page: RegisterScreen),
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.profileScreen, page: ProfileScreen),
    RouteDef(Routes.helpScreen, page: HelpScreen),
    RouteDef(Routes.shareLocationScreen, page: ShareLocationScreen),
    RouteDef(Routes.nearbyHcc, page: NearbyHcc),
    RouteDef(Routes.precautionScreen, page: PrecautionScreen),
    RouteDef(Routes.precautionsContent, page: PrecautionsContent),
    RouteDef(Routes.firstAidScreen, page: FirstAidScreen),
    RouteDef(Routes.firstAidContent, page: FirstAidContent),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    IntroScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => IntroScreen(),
        settings: data,
      );
    },
    LoginScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginScreen(),
        settings: data,
      );
    },
    RegisterScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterScreen(),
        settings: data,
      );
    },
    HomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    ProfileScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfileScreen(),
        settings: data,
      );
    },
    HelpScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HelpScreen(),
        settings: data,
      );
    },
    ShareLocationScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShareLocationScreen(),
        settings: data,
      );
    },
    NearbyHcc: (data) {
      final args = data.getArgs<NearbyHccArguments>(
        orElse: () => NearbyHccArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => NearbyHcc(currentPos: args.currentPos),
        settings: data,
      );
    },
    PrecautionScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PrecautionScreen(),
        settings: data,
      );
    },
    PrecautionsContent: (data) {
      final args = data.getArgs<PrecautionsContentArguments>(
        orElse: () => PrecautionsContentArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => PrecautionsContent(
          key: args.key,
          precaution: args.precaution,
        ),
        settings: data,
      );
    },
    FirstAidScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FirstAidScreen(),
        settings: data,
      );
    },
    FirstAidContent: (data) {
      final args = data.getArgs<FirstAidContentArguments>(
        orElse: () => FirstAidContentArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => FirstAidContent(
          key: args.key,
          firstAid: args.firstAid,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// NearbyHcc arguments holder class
class NearbyHccArguments {
  final Position currentPos;
  NearbyHccArguments({this.currentPos});
}

/// PrecautionsContent arguments holder class
class PrecautionsContentArguments {
  final Key key;
  final Precaution precaution;
  PrecautionsContentArguments({this.key, this.precaution});
}

/// FirstAidContent arguments holder class
class FirstAidContentArguments {
  final Key key;
  final FirstAid firstAid;
  FirstAidContentArguments({this.key, this.firstAid});
}
