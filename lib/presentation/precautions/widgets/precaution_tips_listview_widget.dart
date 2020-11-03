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
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(size.height / 40),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width / 21,
                          vertical: size.height / 82),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: size.width / 29),
                            height: size.height / 27,
                            width: size.height / 27,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(size.height / 27),
                              border: Border.all(
                                  color: Color(0xff4d4f53), width: 3),
                            ),
                            child: Center(
                              child: Text(
                                '${i + 1}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(
                                      color: Color(0xff4d4f53),
                                    ),
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
