import 'package:flutter/material.dart';
import 'package:flutter_connectivity/connectivity/view/view.dart'
    show ConnectivityUI;

class ConnectivityView extends StatelessWidget {
  const ConnectivityView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Connectivity App')),
        body: const ConnectivityUI());
  }
}
