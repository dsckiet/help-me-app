import 'package:auto_route/auto_route_annotations.dart';
import 'package:help_me/presentation/auth/google_sign_in_page/intro_screen.dart';
import 'package:help_me/presentation/auth/login_form/login_form_screen.dart';
import 'package:help_me/presentation/auth/register_form/register_form_screen.dart';
import 'package:help_me/presentation/first_aid/first_aid_content_screen.dart';
import 'package:help_me/presentation/first_aid/first_aid_screen.dart';
import 'package:help_me/presentation/help_alert/help_screen.dart';
import 'package:help_me/presentation/home_screen/home_screen.dart';
import 'package:help_me/presentation/nearby_healthcare_centres/nearby_hcc.dart';
import 'package:help_me/presentation/precautions/precaution_content_page.dart';
import 'package:help_me/presentation/precautions/precaution_screen.dart';
import 'package:help_me/presentation/share_location/share_location_screen.dart';
import 'package:help_me/presentation/user_profile/profile_screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: IntroScreen, initial: true),
  MaterialRoute(page: LoginScreen),
  MaterialRoute(page: RegisterScreen),
  MaterialRoute(page: HomeScreen),
  MaterialRoute(page: ProfileScreen),
  MaterialRoute(page: HelpScreen),
  MaterialRoute(page: ShareLocationScreen),
  MaterialRoute(page: NearbyHcc),
  MaterialRoute(page: PrecautionScreen),
  MaterialRoute(page: PrecautionsContent),
  MaterialRoute(page: FirstAidScreen),
  MaterialRoute(page: FirstAidContent),
])
class $Router {}
