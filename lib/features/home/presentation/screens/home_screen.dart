import 'package:flutter/material.dart';
import 'package:flutter_example_app/core/config/routes/route_location.dart';
import 'package:flutter_example_app/shared/utils/utils.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

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
            itemCount: _buildListItems(context).length,
            itemBuilder: (context, index) {
              return _buildListItems(context)[index];
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

  // list of items example todo list, parallax, profile, favorites
  List<Widget> _buildListItems(BuildContext context) {
    return [
      ListTile(
        title: const Text('Todo list'),
        onTap: () {
          context.go(RouteLocation.todoList);
        },
      ),
      ListTile(
        title: const Text('Parallax'),
        onTap: () {
          context.go(RouteLocation.parallax);
        },
      ),
    ];
  }
}
