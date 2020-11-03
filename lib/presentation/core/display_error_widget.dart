import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DisplayErrorWidget extends StatelessWidget {
  const DisplayErrorWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Center(
            child: Lottie.asset('assets/animations/error_animation.json')),
      ),
    );
  }
}
