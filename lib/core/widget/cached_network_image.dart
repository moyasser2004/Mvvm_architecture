import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_architecture/core/widget/shimmer_container.dart';

class CustomerCachedNetworkImage extends StatelessWidget {
  const CustomerCachedNetworkImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      fit: BoxFit.fill,
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          const CustomerShimmerContainer(),
      errorWidget: (context, url, error) => const Center(
          child: Icon(
        Icons.error,
        color: Colors.red,
      )),
    );
  }
}
