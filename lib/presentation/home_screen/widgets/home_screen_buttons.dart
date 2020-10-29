import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenButtons extends StatelessWidget {
  const HomeScreenButtons({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons/$title.svg',
              height: size.width / 20,
              width: size.width / 20,
            ),
            Container(
              width: size.width / 5,
              child: Center(
                child: Wrap(
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color(0xFFF1F1F1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
