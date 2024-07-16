import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
class CustomFeaturedBookItem extends StatelessWidget {
  const CustomFeaturedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(

      aspectRatio: 2.7/4,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            width: 100,
            height: 100,
            AssetsData.test,fit: BoxFit.fill,)),
    );
  }
}