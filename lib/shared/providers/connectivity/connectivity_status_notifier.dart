import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ConnectivityStatus { connected, disconnected, noDetermined }

class ConnectivityStatusNotifier extends StateNotifier<ConnectivityStatus> {
  StreamController<ConnectivityStatus> connectivityStreamController =
      StreamController<ConnectivityStatus>();

  ConnectivityStatus? lastResult;
  ConnectivityStatus? newResult;

  ConnectivityStatusNotifier() : super(ConnectivityStatus.connected) {
    if (state == ConnectivityStatus.connected) {
      lastResult = ConnectivityStatus.connected;
    } else {
      lastResult = ConnectivityStatus.disconnected;
    }

    Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> results) {
      for (var result in results) {
        ConnectivityStatus newResult;
        switch (result) {
          case ConnectivityResult.none:
            newResult = ConnectivityStatus.noDetermined;
            break;
          case ConnectivityResult.mobile:
          case ConnectivityResult.wifi:
            newResult = ConnectivityStatus.connected;
            break;
          default:
            newResult = ConnectivityStatus.disconnected;
            break;
        }

        if (newResult != lastResult) {
          state = newResult;
          lastResult = newResult;
        }
      }
    });
  }
}

final connectivityStatusProviders =
    StateNotifierProvider<ConnectivityStatusNotifier, ConnectivityStatus>(
        (ref) => ConnectivityStatusNotifier());
