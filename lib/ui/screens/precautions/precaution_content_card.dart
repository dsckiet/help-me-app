import 'package:flutter/material.dart';
import 'package:help_me/Models/First_Aid_Content_Model.dart';
import 'package:help_me/models/precautions_content_model.dart';
import 'package:help_me/models/precautions_data_model.dart';
import 'package:provider/provider.dart';
import 'Precaution_Content_Page.dart';

class PrecautionsContentCard extends StatelessWidget {
  final String title;
  PrecautionsContentCard({this.title});
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<PrecautionsDataRepository>(context);
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: size.width * 0.058, vertical: 8),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              Map map;
              for (int i = 0; i < data.precautionsData.length; i++) {
                if (data.precautionsData[i]['title'] == title)
                  map = Map.from(data.precautionsData[i]);
              }
              final PrecautionsContentModel content = PrecautionsContentModel(map);
              return Provider<PrecautionsContentModel>.value(
                value: content,
                child: PrecautionsContent(),
              );
            }));
          },
        ),
      ),
    );
  }
}
