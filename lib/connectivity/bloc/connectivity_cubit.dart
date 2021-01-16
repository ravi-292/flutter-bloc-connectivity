import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectivityCubit extends Cubit<ConnectivityResult> {
  ConnectivityCubit() : super(ConnectivityResult.none) {
    _connectivityResultSubscription = Connectivity()
        .onConnectivityChanged
        .listen((connectivityResult) => emit(connectivityResult));
  }

  String translateConnectivityStatus(ConnectivityResult connectivityResult) {
    String _connectivityMessage;
    switch (connectivityResult) {
      case ConnectivityResult.wifi:
        _connectivityMessage = 'Connected to WiFi!! 🤗🤗';
        break;
      case ConnectivityResult.mobile:
        _connectivityMessage = 'Connected to Mobile network!! 😌😌';
        break;
      case ConnectivityResult.none:
        _connectivityMessage = 'Disconnected from world!! 😴😴';
        break;
      default:
        _connectivityMessage = 'What just happened?? 🤐🤐';
        break;
    }
    return _connectivityMessage;
  }

  StreamSubscription<ConnectivityResult> _connectivityResultSubscription;

  @override
  Future<void> close() {
    _connectivityResultSubscription.cancel();
    return super.close();
  }
}
