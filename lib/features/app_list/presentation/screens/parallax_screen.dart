import 'package:flutter/material.dart';
import 'package:flutter_example_app/core/config/routes/route_location.dart';
import 'package:flutter_example_app/features/app_list/presentation/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class ParallaxScreen extends StatefulWidget {
  const ParallaxScreen({super.key});

  @override
  State<ParallaxScreen> createState() => _ParallaxScreenState();
}

class _ParallaxScreenState extends State<ParallaxScreen> {
  late PageController _pageController;
  double page = 0.0;
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 1,
      viewportFraction: 0.6,
    );
    _pageController.addListener(_onScroll);

    super.initState();
  }

    void _onScroll() {
    setState(() {
      page = _pageController.page!;
    });
  }

  @override
  void dispose() {
    _pageController.removeListener(_onScroll);
    _pageController.dispose();
    super.dispose();
  }

  List<String> images = [
    'https://flutter4fun.com/wp-content/uploads/2021/06/1-1.jpg',
    'https://flutter4fun.com/wp-content/uploads/2021/06/2-1.jpg',
    'https://flutter4fun.com/wp-content/uploads/2021/06/3-1.jpg',
    'https://flutter4fun.com/wp-content/uploads/2021/06/4-1.jpg',
    'https://flutter4fun.com/wp-content/uploads/2021/06/5-1.jpg',
    'https://flutter4fun.com/wp-content/uploads/2021/06/6-1.jpg',
    'https://flutter4fun.com/wp-content/uploads/2021/06/7-1.jpg',
    'https://flutter4fun.com/wp-content/uploads/2021/06/8-1.jpg',
    'https://flutter4fun.com/wp-content/uploads/2021/06/9-1.jpg',
    'https://flutter4fun.com/wp-content/uploads/2021/06/10-1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parallax'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () => context.go(RouteLocation.home),
            );
          },
        ),
      ),
      body: Center(
        child: SizedBox(
            height: screenSize.width / 1.5,
            child: PageView.builder(
              controller: _pageController,
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ParallaxImage(
                      url: images[index],
                      horizontalSlide: (index - page).clamp(-1, 0).toDouble(),
                    ),
                  ),
                );
              },
              itemCount: images.length,
            )),
      ),
    );
  }
}
