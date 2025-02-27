import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_constants.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        aspectRatio: AppConstants.carouselAspectRatio,
        viewportFraction: AppConstants.carouselViewportFraction,
      ),
      itemCount: 15,
      itemBuilder: (context, index, pageViewIndex) => BannerItem(index: index),
    );
  }
}

class BannerItem extends StatelessWidget {
  final int index;
  const BannerItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(right: AppConstants.defaultPadding),
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(
              "${ApiConstants.baseImageUrl}photo-1595475884562-073c30d45670?q=80&w=2969&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: Text(index.toString()),
    );
  }
}
