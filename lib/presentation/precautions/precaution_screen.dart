import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:help_me/application/precaution/precaution_bloc.dart';
import 'package:help_me/injection.dart';
import 'package:help_me/presentation/precautions/widgets/precaution_list_body.dart';

class PrecautionScreen extends StatefulWidget {
  @override
  _PrecautionScreenState createState() => _PrecautionScreenState();
}

class _PrecautionScreenState extends State<PrecautionScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider<PrecautionBloc>(
      create: (context) =>
          getIt<PrecautionBloc>()..add(PrecautionEvent.loadPrecautions()),
      child: Scaffold(
        body: buildPrecautionScreenBody(size, context),
      ),
    );
  }

  Container buildPrecautionScreenBody(Size size, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: size.height / 17),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text(
            "Precautions",
            style: Theme.of(context).textTheme.headline5,
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height / 40),
          ),
          //list of first aid topic cards
          PrecautionsListBody(),
        ],
      ),
    );
  }
}
