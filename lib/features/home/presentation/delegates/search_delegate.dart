import 'package:flutter/material.dart';

class SearchHomeDelegate extends SearchDelegate {
  final List<String> products = [
    'Banana',
    'Apple',
    'Orange',
    'Grapes',
    'Strawberry',
    'Mango',
    'Pineapple',
    'Watermelon',
    'Lemon',
    'Peach',
    'Cherry',
    'Plum',
  ];

  @override
  String get searchFieldLabel => 'Busca un restaurante';
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final searchText = products
        .where((element) => element.toLowerCase().contains(query))
        .toList();
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: searchText.length,
        itemBuilder: (context, index) {
          final searchTextResult = searchText[index];
          return ListTile(
            title: Text(searchTextResult),
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final searchTextResult = products[index];
          return ListTile(
            title: Text(searchTextResult),
          );
        },
      ),
    );
  }
}
