import 'package:flutter/material.dart';
import 'package:help_me/injection.dart';
import 'package:help_me/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(
    (AppWidget()
    // MultiProvider(
    //   providers: [
    //     StreamProvider.value(value: AuthService().user),
    //     Provider<NetworkLoader>(
    //       create: (context) => NetworkLoader(),
    //     ),
    //   ],
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     theme: kThemeData,
    //     home: Wrapper(),
    //     initialRoute: Router.initialPage,
    //     onGenerateRoute: Router.onGenerateRoute,
    //     navigatorKey: Router.navigatorKey,
    //  ),
    ),
  );
}
