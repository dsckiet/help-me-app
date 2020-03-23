import 'package:flutter/material.dart';
import 'package:help_me/google_current_loc.dart';
import 'package:help_me/main.dart';
import 'package:help_me/routes/first_aid_screen.dart';
import 'package:help_me/routes/help_screen.dart';
import 'package:help_me/routes/precaution_screen.dart';
import 'package:help_me/routes/profile_screen.dart';
import 'package:help_me/routes/register_screen.dart';
import 'package:help_me/routes/share_location_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              child: GoogleCurrentLoc(),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              child: Container(
                //height: 70,
                padding: EdgeInsets.only(bottom: 20, left: 20.0, right: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Container(
                    color: baseColor,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstAidScreen()),
                            );
                          },
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.healing,
                                  color: const Color(0xFFF1F1F1),
                                ),
                                Text(
                                  'First aid',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: const Color(0xFFF1F1F1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrecautionScreen()),
                            );
                          },
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.report_problem,
                                  color: const Color(0xFFF1F1F1),
                                ),
                                Text(
                                  'Precaution',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: const Color(0xFFF1F1F1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShareLocationScreen()),
                            );
                          },
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image(
                                  height: 24,
                                  image:
                                      AssetImage("assets/images/location.png"),
                                ),
                                Text(
                                  'Dont know',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: const Color(0xFFF1F1F1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen()),
                            );
                          },
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.person,
                                  color: const Color(0xFFF1F1F1),
                                ),
                                Text(
                                  'Profile',
                                  style: TextStyle(
                                    fontSize: 14.0,
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
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 90.0, right: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                child: Icon(
                  Icons.live_help,
                  color: const Color(0xFFF1F1F1),
                ),
                backgroundColor: Color(0xFFDB4437),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelpScreen()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
