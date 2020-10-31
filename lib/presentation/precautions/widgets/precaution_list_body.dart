import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:help_me/application/precaution/precaution_bloc.dart';
import 'package:help_me/presentation/precautions/widgets/precaution_content_card.dart';
import 'package:lottie/lottie.dart';

class PrecautionsListBody extends StatelessWidget {
  const PrecautionsListBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PrecautionBloc, PrecautionState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          //display a progress indicator while data is fetched or failiure occours
          loadingProgress: (_) => buildLoadingProgressIndicator(),
          loadingSuccess: (state) {
            //display the list of precautions
            return Expanded(
              child: ListView.builder(
                itemBuilder: (context, int i) {
                  return PrecautionsContentCard(
                    precaution: state.precautions[i],
                  );
                },
                itemCount: state.precautions.size,
              ),
            );
          },
          //display an error animation if something goes wrong
          loadingFailiure: (state) => buildErrorDisplayWidget(),
        );
      },
      listener: (context, state) {
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
      },
    );
  }

  //error animation widget
  Expanded buildErrorDisplayWidget() {
    return Expanded(
      child: Container(
        child: Center(
            child: Lottie.asset('assets/animations/error_animation.json')),
      ),
    );
  }

  //loading progress indicator
  Expanded buildLoadingProgressIndicator() {
    return Expanded(
      child: Container(
        child: Center(
            child: Lottie.asset('assets/animations/loading_animation.json')),
      ),
    );
  }
}
