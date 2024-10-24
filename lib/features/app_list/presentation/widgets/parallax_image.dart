import 'package:flutter/material.dart';

class ParallaxImage extends StatelessWidget {
  const ParallaxImage(
      {super.key, required this.url, required this.horizontalSlide});
  final String url;
  final double horizontalSlide;

  @override
  Widget build(BuildContext context) {
    final scale = 1 - horizontalSlide.abs();
    final screenSize = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: screenSize.width * ((scale * 0.8) + 0.8),
        height: screenSize.height * ((scale * 0.2) + 0.2),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(48)),
          child: Image.network(
            url,
            alignment: Alignment(horizontalSlide, 1),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
