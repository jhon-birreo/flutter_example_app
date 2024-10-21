import 'package:flutter/material.dart';
import 'package:flutter_example_app/core/config/routes/app_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              );
            },
          ),
        ),
        body: Center(
          child: Builder(
            builder: (context) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text('Open Drawer')),
          ),
        ));
  }
}
