import 'package:flutter/material.dart';
import 'package:help_me/services/firebase_auth.dart';
import 'package:help_me/services/firstAidService.dart';
import 'package:help_me/ui/shared/ThemeData.dart';
import 'package:help_me/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        StreamProvider.value(value: AuthService().user),
        Provider<FirstAidData>(
          create: (context) => FirstAidData(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: kThemeData,
        home: Wrapper(),
      ),
    ),
  );
}
