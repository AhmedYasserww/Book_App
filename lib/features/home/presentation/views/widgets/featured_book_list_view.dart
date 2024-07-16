import 'package:books_app/features/home/presentation/views/widgets/custom_featured_book_item.dart';
import 'package:flutter/material.dart';
class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*.28,


      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder:(context,i){
            return Padding(
              padding: const EdgeInsets.only(right: 15,),
              child: CustomFeaturedBookItem(),
            );
          }),

    );
  }
}
