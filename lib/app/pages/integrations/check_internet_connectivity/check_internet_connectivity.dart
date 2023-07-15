import 'dart:async';

import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

class CheckInternetConnectivity extends StatefulWidget {
  const CheckInternetConnectivity({super.key});

  @override
  State<CheckInternetConnectivity> createState() =>
      _CheckInternetConnectivityState();
}

class _CheckInternetConnectivityState extends State<CheckInternetConnectivity> {
  ConnectivityResult _connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    initConnectivity();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

// final connectivityResult = await (Connectivity().checkConnectivity());
// if (connectivityResult == ConnectivityResult.mobile) {
//   // I am connected to a mobile network.
// } else if (connectivityResult == ConnectivityResult.wifi) {
//   // I am connected to a wifi network.
// } else if (connectivityResult == ConnectivityResult.ethernet) {
//   // I am connected to a ethernet network.
// } else if (connectivityResult == ConnectivityResult.vpn) {
//   // I am connected to a vpn network.
//   // Note for iOS and macOS:
//   // There is no separate network interface type for [vpn].
//   // It returns [other] on any device (also simulator)
// } else if (connectivityResult == ConnectivityResult.bluetooth) {
//   // I am connected to a bluetooth.
// } else if (connectivityResult == ConnectivityResult.other) {
//   // I am connected to a network which is not in the above mentioned networks.
// } else if (connectivityResult == ConnectivityResult.none) {
//   // I am not connected to any network.
// }
  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      // developer.log('Couldn\'t check connectivity status', error: e);
      return;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionStatus = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connectivity example app'),
        elevation: 4,
      ),
      body: Center(
          child: Text('Connection Status: ${_connectionStatus.toString()}')),
    );
  }
}
