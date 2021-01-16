import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_connectivity/connectivity/connectivity.dart'
    show ConnectivityCubit;

class ConnectivityUI extends StatelessWidget {
  const ConnectivityUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .headline5
        .copyWith(color: Theme.of(context).primaryColorDark);
    return BlocConsumer<ConnectivityCubit, ConnectivityResult>(
      listener: (context, state) {
        final connectivityMessage = BlocProvider.of<ConnectivityCubit>(context)
                ?.translateConnectivityStatus(state) ??
            '';
        if (connectivityMessage.isNotEmpty) {
          final bgColor = state == ConnectivityResult.mobile
              ? Colors.purple[600]
              : state == ConnectivityResult.wifi
                  ? Colors.green[600]
                  : Colors.red[500];
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text(
                '$connectivityMessage',
              ),
              backgroundColor: bgColor,
            ));
        }
      },
      builder: (context, state) {
        final connectivityMessage = context.select((ConnectivityCubit cubit) =>
            cubit.translateConnectivityStatus(state));
        return Center(
          child: Text('$connectivityMessage', style: textTheme),
        );
      },
    );
  }
}
