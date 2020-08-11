import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Go to SECOND'),
            ),
            SizedBox(height: 10),
            RaisedButton(
              child: Text('Go to THIRD'),
              //onPressed: () => navigateToThird(context),
            ),
          ],
        ),
      ),
    );
  }
}
