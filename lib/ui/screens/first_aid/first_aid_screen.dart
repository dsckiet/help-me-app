import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:help_me/bloc/network_loader_bloc.dart';
import 'First_Aid_Content_Card.dart';

class FirstAidScreen extends StatefulWidget {
  @override
  _FirstAidScreenState createState() => _FirstAidScreenState();
}

class _FirstAidScreenState extends State<FirstAidScreen> {
  final bloc = NetworkLoaderBloc();
  @override
  void initState() {
    super.initState();
    bloc.add(GetFirstAid());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<NetworkLoaderBloc, NetworkLoaderState>(
      cubit: bloc,
      builder: (context, state) {
        if (state is NetworkLoaderLoaded)
          return Container(
            padding: EdgeInsets.only(top: 40.0),
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
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, int i) {
                      return FirstAidContentCard(
                        title: state.firstAid.firstAidData[i]['woundType'],
                        map: state.firstAid.firstAidData[i],
                      );
                    },
                    itemCount: state.firstAid.firstAidData.length,
                  ),
                )
              ],
            ),
          );
        return Center(child: CircularProgressIndicator());
      },
    ));
  }
}
