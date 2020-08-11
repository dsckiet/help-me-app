import 'package:auto_route/auto_route_annotations.dart';
import 'package:help_me/pages/initial_page.dart';
import 'package:help_me/pages/second_page.dart';
import 'package:help_me/pages/third_page.dart';

@autoRouter
class $Router {
  @initial
  InitialPage initialPage;
  SecondPage secondPage;
  ThirdPage thirdPage;
}
