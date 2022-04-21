import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';

import '../widget/home_catogry_item.dart';
import '../widget/product_grid_item.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBar(
          elevation: 0,
          backgroundColor: kWhiteColor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: kBLackColor,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Text(
                'Chair',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: semibold,
                  color: kBLackColor,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/search-result');
                },
                child: Image.asset(
                  'assets/icon_search.png',
                  width: 24,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Image.asset(
                'assets/icon_filter.png',
                width: 24,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(
            height: 10,
          ),
          HomeCategoryItem(
            title: 'Minimalis Chair',
            subtitle: 'Chair',
            imageUrl: 'assets/image_product_category1.png',
          ),
          SizedBox(
            height: 24,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 18,
            runSpacing: 18,
            children: [
              ProductGridItem(
                imageUrl: 'assets/image_product_grid1.png',
                title: 'Poan Chair',
                price: 34,
                favorite: false,
              ),
              ProductGridItem(
                imageUrl: 'assets/image_product_grid2.png',
                title: 'Poan Chair',
                price: 34,
                favorite: true,
              ),
              ProductGridItem(
                imageUrl: 'assets/image_product_grid3.png',
                title: 'Poan Chair',
                price: 34,
                favorite: false,
              ),
              ProductGridItem(
                imageUrl: 'assets/image_product_grid4.png',
                title: 'Poan Chair',
                price: 34,
                favorite: false,
              ),
              ProductGridItem(
                imageUrl: 'assets/image_product_grid1.png',
                title: 'Poan Chair',
                price: 34,
                favorite: false,
              ),
              ProductGridItem(
                imageUrl: 'assets/image_product_grid2.png',
                title: 'Poan Chair',
                price: 34,
                favorite: true,
              ),
              ProductGridItem(
                imageUrl: 'assets/image_product_grid3.png',
                title: 'Poan Chair',
                price: 34,
                favorite: false,
              ),
              ProductGridItem(
                imageUrl: 'assets/image_product_grid4.png',
                title: 'Poan Chair',
                price: 34,
                favorite: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
