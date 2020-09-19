import 'package:flutter/material.dart';
import 'package:help_me/Models/first_aid_data_model.dart';
import 'package:help_me/core/google_current_loc.dart';
import 'package:help_me/services/network_loader.dart';
import 'package:help_me/ui/screens/First_Aid/First_Aid_Screen.dart';
import 'package:help_me/ui/shared/constants.dart';
import 'package:provider/provider.dart';
import 'nearby_hcc.dart';
import '../Precautions/Precaution_Screen.dart';
import 'profile_screen.dart';
import 'share_location_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final networkLoader = Provider.of<NetworkLoader>(context);
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
                    color: kGreenColor,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        InkWell(
                          onTap: () async {
                            //get first aid data from the api and store in data variabe.
                            final FirstAidDataRepository data =
                                await networkLoader.getFirstAidData();
                            if (data.firstAidData != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  //pass the data list to firstaid screen
                                  return Provider<FirstAidDataRepository>.value(
                                    value: data,
                                    child: FirstAidScreen(),
                                  );
                                }),
                              );
                            }
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
                          onTap: () async {
                            final data =
                                await networkLoader.getPrecautionsData();
                            if (data.precautionsData != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Provider.value(
                                    value: data,
                                    child: PrecautionScreen(),
                                  ),
                                ),
                              );
                            }
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
                    MaterialPageRoute(
                      builder: (context) => NearbyHcc(
                        currentPos: livePosition,
                      ),
                    ),
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
