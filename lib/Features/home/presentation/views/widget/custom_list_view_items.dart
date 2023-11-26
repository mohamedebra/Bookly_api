import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 /4,
        child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
          errorWidget: (context,url,error)=> Icon(Icons.error),
        ),
      ),
    );
  }
}
