import 'package:flutter/material.dart';
import '../../../../../core/widget/cached_network_image.dart';

class ListViewHomeItem extends StatelessWidget {
  const ListViewHomeItem({
    super.key,
    required this.aspectRatio,
    required this.image,
  });

  final double aspectRatio;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CustomerCachedNetworkImage(image: image),
      ),
    );
  }
}
