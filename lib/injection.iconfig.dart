// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:help_me/infrastructure/core/firebase_injectable_module.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:help_me/infrastructure/core/help_me_api.dart';
import 'package:help_me/infrastructure/auth/firebase_auth_facade.dart';
import 'package:help_me/domain/auth/i_auth_facade.dart';
import 'package:help_me/infrastructure/first_aid/first_aid_repository.dart';
import 'package:help_me/domain/first_aid/i_first_aid_repository.dart';
import 'package:help_me/infrastructure/precautions/precaution_repository.dart';
import 'package:help_me/domain/precautions/i_precaution_repository.dart';
import 'package:help_me/application/precaution/precaution_bloc.dart';
import 'package:help_me/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:help_me/application/first_aid/firstaid_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<HelpMeApi>(() => HelpMeApi());
  g.registerLazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerLazySingleton<IFirstAidRepository>(
      () => FirstAidRepository(g<HelpMeApi>()));
  g.registerLazySingleton<IPrecautionsRepository>(
      () => PrecautionRepository(g<HelpMeApi>()));
  g.registerFactory<PrecautionBloc>(
      () => PrecautionBloc(g<IPrecautionsRepository>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<FirstaidBloc>(() => FirstaidBloc(g<IFirstAidRepository>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
