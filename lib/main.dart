import 'package:flutter/material.dart';
import 'package:help_me/routes/router.gr.dart';
import 'package:help_me/services/firebase_auth.dart';
import 'package:help_me/services/network_loader.dart';
import 'package:help_me/ui/shared/theme_data.dart';
import 'package:help_me/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        StreamProvider.value(value: AuthService().user),
        Provider<NetworkLoader>(
          create: (context) => NetworkLoader(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: kThemeData,
        home: Wrapper(),
        initialRoute: Router.initialPage,
        onGenerateRoute: Router.onGenerateRoute,
        navigatorKey: Router.navigatorKey,
      ),
    ),
  );
}
