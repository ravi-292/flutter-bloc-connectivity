import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_connectivity/connectivity/connectivity.dart'
    show ConnectivityCubit, ConnectivityView;

class ConnectivityPage extends StatelessWidget {
  const ConnectivityPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ConnectivityCubit(),
      child: const ConnectivityView(),
    );
  }
}
