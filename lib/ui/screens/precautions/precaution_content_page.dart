import 'package:flutter/material.dart';
import 'package:help_me/models/precautions_content_model.dart';
import 'package:provider/provider.dart';

class PrecautionsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final content = Provider.of<PrecautionsContentModel>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 0,
          width: 0,
        ),
        backgroundColor: Colors.white,
        title: Text(
          content.data['title'],
          style: Theme.of(context).textTheme.headline5.copyWith(fontSize: 22),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.08,
                        right: size.width * 0.08,
                        bottom: 20),
                    child: Text('Before : \n' +
                        content.data['before'] +
                        '\nAfter : \n' +
                        content.data['after']),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
