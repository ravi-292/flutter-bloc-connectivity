import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_connectivity/bloc_observer.dart';

import 'connectivity/connectivity.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocObserver observer = ConnectivityObserver();

  runApp(const ConnectivityApp());
}
