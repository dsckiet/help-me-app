import 'package:flutter/material.dart';
import 'package:help_me/ui/screens/widgets/first_aid_content_card.dart';

class FirstAidScreen extends StatefulWidget {
  @override
  _FirstAidScreenState createState() => _FirstAidScreenState();
}

class _FirstAidScreenState extends State<FirstAidScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: buildFirstAidBody(size, context),
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
          // Expanded(
          //   child: ListView.builder(
          //     itemBuilder: (context, int i) {
          //       return FirstAidContentCard(
          //         title: 'Ayush sharma',
          //       );
          //     },
          //     itemCount: 5,
          //   ),
          // )
        ],
      ),
    );
  }
}
