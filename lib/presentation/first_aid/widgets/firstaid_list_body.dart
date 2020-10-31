import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:help_me/application/first_aid/firstaid_bloc.dart';
import 'package:help_me/presentation/core/display_error_widget.dart';
import 'package:help_me/presentation/core/loading_indicator.dart';

import 'first_aid_content_card.dart';

class FirstAidListBodyWidget extends StatelessWidget {
  const FirstAidListBodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FirstaidBloc, FirstaidState>(builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadingProgress: (_) => LoadingIndicator(),
        loadingSuccess: (state) {
          return Expanded(
            child: ListView.builder(
              itemBuilder: (context, int i) {
                return FirstAidContentCard(
                  firstAid: state.firstAids[i],
                );
              },
              itemCount: state.firstAids.size,
            ),
          );
        },
        loadingFailiure: (_) => DisplayErrorWidget(),
      );
    }, listener: (context, state) {
      //pop up a snackbar displaying error if error occoured
      state.maybeMap(
        loadingFailiure: (state) {
          FlushbarHelper.createError(
                  message: 'Something went wrong please try again',
                  duration: Duration(seconds: 5))
              .show(context);
        },
        orElse: () {},
      );
    });
  }
}
