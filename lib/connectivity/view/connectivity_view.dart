import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_connectivity/connectivity/connectivity.dart'
    show ConnectivityCubit;

import 'connectivity_ui.dart';

class ConnectivityView extends StatelessWidget {
  const ConnectivityView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .headline5
        .copyWith(color: Theme.of(context).primaryColorDark);
    return Scaffold(
        appBar: AppBar(title: const Text('Connectivity App')),
        body: const ConnectivityUI()
        // Center(
        //   child: BlocBuilder<ConnectivityCubit, ConnectivityResult>(
        //     builder: (context, state) {
        //       final connectivityMessage = context.select(
        //           (ConnectivityCubit cubit) =>
        //               cubit.translateConnectivityStatus(state));
        //       return Text('$connectivityMessage', style: textTheme);
        //     },
        //   ),
        // ),
        );
  }
}
