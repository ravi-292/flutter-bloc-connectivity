import 'package:flutter/material.dart';
import 'view.dart' show ConnectivityPage;

class ConnectivityApp extends MaterialApp {
  const ConnectivityApp({Key key})
      : super(
            key: key,
            home: const ConnectivityPage(),
            debugShowCheckedModeBanner: false);
}
