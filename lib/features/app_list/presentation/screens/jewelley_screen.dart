import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class JewelleryScreen extends StatelessWidget {
  const JewelleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: const Center(
          child: Text('Jewellery'),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.menu_1),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.search_favorite),
        ),
      ],
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Purchase your jewellery in  a minute with',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
          Text(
            'JewelleryGo',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                color: Colors.black),
          ),
        ],
      ),
      bottom: const TabBar(
        tabs: [
          Tab(child: Text('Earrings')),
          Tab(child: Text('Rings')),
          Tab(child: Text('Diamonds')),
        ],
      ),
    );
  }
}
