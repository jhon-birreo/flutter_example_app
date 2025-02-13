import 'package:flutter/material.dart';
import 'package:flutter_example_app/shared/providers/connectivity/connectivity_status_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConnectivityScreen extends ConsumerWidget {
  const ConnectivityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var connectivityStatusProvider = ref.watch(connectivityStatusProviders);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            connectivityStatusProvider == ConnectivityStatus.connected
                ? 'Is Connected to Internet'
                : 'Is Disconnected from Internet',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          backgroundColor:
              connectivityStatusProvider == ConnectivityStatus.connected
                  ? Colors.green
                  : Colors.red,
        ),
      );
    });

    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: const Text(
            'Network Connectivity',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Connectivity Status',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                connectivityStatusProvider == ConnectivityStatus.connected
                    ? 'Is Connected to Internet'
                    : 'Is Disconnected from Internet',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              )
            ],
          ),
        ));
  }
}
