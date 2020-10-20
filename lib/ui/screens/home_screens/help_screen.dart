// import 'package:flutter/material.dart';
// import 'package:help_me/ui/shared/constants.dart';
// import 'home_screen.dart';

// class HelpScreen extends StatefulWidget {
//   @override
//   _HelpScreenState createState() => _HelpScreenState();
// }

// class _HelpScreenState extends State<HelpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.only(top: 40, left: 20, right: 20),
//         child: Column(
//           children: <Widget>[
//             Text(
//               "Need Help",
//               style: Theme.of(context).textTheme.headline5,
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 32),
//               child: Text(
//                 "Hello guys,I Shubham Singh is in dangerplease help me if you canI am at 221b baker street",
//                 style: Theme.of(context).textTheme.bodyText1,
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 20.0),
//               child: SizedBox(
//                 width: double.infinity,
//                 child: RaisedButton(
//                   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 48),
//                   child: Text(
//                     "Edit",
//                     style: TextStyle(
//                         fontSize: 24.0,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white),
//                   ),
//                   color: Color(0xFFB9B9B9),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: new BorderRadius.circular(8.0)),
//                   onPressed: () => Navigator.pushReplacement(context,
//                       MaterialPageRoute(builder: (context) => HomeScreen())),
//                 ),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 8.0),
//               child: SizedBox(
//                 width: double.infinity,
//                 child: RaisedButton(
//                   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 48),
//                   child: Text(
//                     "Confirm",
//                     style: TextStyle(
//                       fontSize: 24.0,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   color: kGreenColor,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: new BorderRadius.circular(8.0)),
//                   onPressed: () => Navigator.pushReplacement(context,
//                       MaterialPageRoute(builder: (context) => HomeScreen())),
//                 ),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 16),
//               alignment: Alignment.topLeft,
//               child: Text("Contact list",
//                   style: Theme.of(context).textTheme.headline6),
//             ),
// //            ListView(
// ////                itemCount: 1,
// ////                itemBuilder: (context,index) {
// ////                  return Card(child: Text("Ritik"));
// ////                }
// //            children: <Widget>[
// //              Card(
// //                child: Row(
// //                  children: <Widget>[
// //                    Text("Ritik"),
// //                    Icon(
// //                      Icons.clear
// //                    )
// //                  ],
// //                ),
// //              )
// //            ],
// //                )
//           ],
//         ),
//       ),
//     );
//   }
// }
