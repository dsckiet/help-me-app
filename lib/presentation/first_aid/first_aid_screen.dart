import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:help_me/application/first_aid/firstaid_bloc.dart';
import 'package:help_me/injection.dart';
import 'package:help_me/presentation/first_aid/widgets/firstaid_list_body.dart';

class FirstAidScreen extends StatefulWidget {
  @override
  _FirstAidScreenState createState() => _FirstAidScreenState();
}

class _FirstAidScreenState extends State<FirstAidScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider<FirstaidBloc>(
      create: (context) => getIt<FirstaidBloc>()
        ..add(
          FirstaidEvent.loadFirstAids(),
        ),
      child: Scaffold(
        body: buildFirstAidBody(size, context),
      ),
    );
  }

  Container buildFirstAidBody(Size size, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: size.height / 17),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text(
            "First Aids",
            style: Theme.of(context).textTheme.headline5,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
          ),
          //list of first aid topic cards
          FirstAidListBodyWidget(),
        ],
      ),
    );
  }
}
