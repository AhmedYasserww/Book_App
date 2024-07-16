import 'package:books_app/features/home/presentation/views/widgets/custom_featured_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            CustomFeaturedBookItem(),
            SizedBox(width: 30,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Harry Potter and the Goblet of Fire",
                    style: Styles.textStyle30.copyWith(fontSize: 20),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,

                  ),
                  Opacity(
                    opacity: .7,
                    child: Text("J.K. Rowling",
                      style: Styles.textStyle14,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99 €",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Row(children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        SizedBox(width: 6.3,),
                        Text("4.8"),
                        SizedBox(width: 9,),
                        Text("(2390)")
                      ],)
                    ],
                  )
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}




