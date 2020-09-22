import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:help_me/bloc/network_loader_bloc.dart';
import 'package:help_me/ui/screens/precautions/precaution_content_card.dart';

class PrecautionScreen extends StatefulWidget {
  @override
  _PrecautionScreenState createState() => _PrecautionScreenState();
}

class _PrecautionScreenState extends State<PrecautionScreen> {
  // ignore: close_sinks
  final bloc = NetworkLoaderBloc();

  @override
  void initState() {
    super.initState();
    bloc.add(GetPrecautions());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
            create: (context) => NetworkLoaderBloc(),
            child: BlocBuilder<NetworkLoaderBloc, NetworkLoaderState>(
              cubit: bloc,
              builder: (context, state) {
                if (state is NetworkLoaderLoaded)
                  return Container(
                    padding: EdgeInsets.only(top: 40.0),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Precautions",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                        ),
                        //list of first aid topic cards
                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, int i) {
                              return PrecautionsContentCard(
                                title: state.precautions.precautionsData[i]
                                    ['title'],
                                map: state.precautions.precautionsData[i],
                              );
                            },
                            itemCount: state.precautions.precautionsData.length,
                          ),
                        )
                      ],
                    ),
                  );
                return Center(child: CircularProgressIndicator());
              },
            )));
  }
}
