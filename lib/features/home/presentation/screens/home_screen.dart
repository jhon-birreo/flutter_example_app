import 'package:flutter/material.dart';
import 'package:flutter_example_app/shared/utils/utils.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                pinned: true,
                floating: true,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Ubicación 123',
                            textAlign: TextAlign.start,
                            style: context.textTheme.titleLarge,
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(Icons.shopping_cart),
                            onPressed: null,
                          ),
                          IconButton(
                            icon: Icon(Icons.notifications),
                            onPressed: null,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SliverAppBar(
                backgroundColor: Colors.white,
                pinned: false,
                floating: true,
                snap: true,
                flexibleSpace: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Buscar...',
                            ),
                          ),
                        ),
                        Gap(20),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: ListView.separated(
            itemCount: 25,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item ${index + 1}'),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                thickness: 1.5,
              );
            },
          ),
        ),
      ),
    );
  }
}
