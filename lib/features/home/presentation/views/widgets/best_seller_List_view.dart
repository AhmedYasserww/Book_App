import 'package:books_app/features/home/presentation/views/widgets/best_seller_book_item.dart';
import 'package:flutter/material.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
        itemBuilder: (context,i){
      return const Padding(

        padding:  EdgeInsets.only(bottom: 24),
        child:  BestSellerBookItem(),
      );
    });
  }
}
