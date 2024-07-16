import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/views/widgets/best_seller_List_view.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:books_app/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Padding(
                  padding:  EdgeInsets.only(left: 30),
                  child: CustomAppBar(),
                ),
                 SizedBox(
                  height: 47,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 30),
                  child: FeaturedBookListView(),
                ),
                SizedBox(
                  height: 49,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 30),
                  child: Text(
                    "Best Seller",
                    style: Styles.textStyle18,
                  ),
                ),
              ],),
          ),
          SliverFillRemaining(
            child: BestSellerListView(),
          )
        ],
      ),

    );
  }
}

    

