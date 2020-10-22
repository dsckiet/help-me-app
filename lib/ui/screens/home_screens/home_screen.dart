import 'package:flutter/material.dart';
import 'package:help_me/core/google_current_loc.dart';
import 'package:help_me/ui/screens/widgets/home_screen_buttons.dart';
import 'package:help_me/ui/shared/constants.dart';
import 'nearby_hcc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              child: GoogleCurrentLoc(),
            ),
          ),
          //placeholder for all the buttons at bottom of home screen
          buildHomeScreenButtonsPlaceholder(size),
          //button for nearby health care centres
          buildNearbyHCCButton(size, context),
        ],
      ),
    );
  }

  Padding buildNearbyHCCButton(Size size, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: size.height / 6, right: size.width / 20),
      child: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          child: Icon(
            Icons.live_help,
            color: const Color(0xFFF1F1F1),
          ),
          backgroundColor: kRedColor,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NearbyHcc(
                  currentPos: livePosition,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Align buildHomeScreenButtonsPlaceholder(Size size) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(
            bottom: size.width / 20,
            left: size.width / 20,
            right: size.width / 20),
        child: Container(
          decoration: BoxDecoration(
              color: kGreenColor, borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //first aid button
              HomeScreenButtons(
                title: 'First Aid',
              ),
              //precaution button
              HomeScreenButtons(
                title: 'Precautions',
              ),
              //share location button
              HomeScreenButtons(
                title: 'Share Location',
              ),
              //profile buutton
              HomeScreenButtons(
                title: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
