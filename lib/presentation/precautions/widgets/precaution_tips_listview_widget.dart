import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

class PrecautionTipsListViewWidget extends StatelessWidget {
  const PrecautionTipsListViewWidget({
    Key key,
    this.tips,
    this.title,
  }) : super(key: key);
  final String title;
  final KtList<String> tips;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Card(
        elevation: 8,
        color: Color(0xfff1f1f1),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Color(0xff4d4f53)),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(1),
                child: ListView.builder(
                  itemBuilder: (context, i) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color(0xff4d4f53), width: 3),
                            ),
                            child: Center(
                              child: Text(
                                '${i + 1}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(color: Color(0xff4d4f53)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Wrap(
                              children: [
                                Text(tips[i]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: tips.size,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
