import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/src/core/images/images.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: CarouselSlider(
          items: const [
            BannerCarouselImage(imageURL: Images.bannerImage1),
            BannerCarouselImage(imageURL: Images.bannerImage2),
            BannerCarouselImage(imageURL: Images.bannerImage3),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true, // Enable auto play
            autoPlayInterval: const Duration(seconds: 5), // Set auto play interval
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
          ),
        ));
  }
}

class BannerCarouselImage extends StatelessWidget {
  const BannerCarouselImage({
    Key? key,
    required this.imageURL,
    this.onPressed,
  }) : super(key: key);

  final String imageURL;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 280,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image(
            image: NetworkImage(imageURL),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
