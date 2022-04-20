import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:space/widget/home_catogry_item.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int categoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          backgroundColor: kWhiteColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 24,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_whislis.png',
                width: 24,
              ),
              label: 'Whislist',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_profile.png',
                width: 24,
              ),
              label: 'Profile',
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset('assets/image_background.png'),
          ListView(
            children: [
              // Header/Title
              Container(
                margin: EdgeInsets.only(top: 24),
                padding: EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/logo_dark.png',
                      width: 53,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Space',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icon_cart.png',
                      width: 30,
                    ),
                  ],
                ),
              ),
              //Search Bar
              Container(
                margin: EdgeInsets.only(top: 30, left: 24, right: 24),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search Furniture',
                      style: GoogleFonts.nunito(
                        color: kGreyColor,
                        fontSize: 16,
                        fontWeight: semibold,
                      ),
                    ),
                    Image.asset(
                      'assets/icon_search.png',
                      width: 24,
                    ),
                  ],
                ),
              ),
              // Category Titile
              Container(
                margin: EdgeInsets.only(left: 24, right: 24, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: semibold,
                        color: kBLackColor,
                      ),
                    ),
                    Text(
                      'Show All',
                      style: GoogleFonts.nunito(),
                    ),
                  ],
                ),
              ),
              // Category Carousel
              Container(
                margin: EdgeInsets.only(top: 24),
                child: CarouselSlider(
                  items: [
                    HomeCategoryItem(
                      title: 'Minimalis Chair',
                      subtitle: 'Chair',
                      imageUrl: 'assets/image_product_category1.png',
                    ),
                    HomeCategoryItem(
                      title: 'Minimalis Table',
                      subtitle: 'Table',
                      imageUrl: 'assets/image_product_category2.png',
                    ),
                    HomeCategoryItem(
                      title: 'Minimalis Chair',
                      subtitle: 'Chair',
                      imageUrl: 'assets/image_product_category3.png',
                    )
                  ],
                  options: CarouselOptions(
                      height: 123,
                      enableInfiniteScroll: false,
                      viewportFraction: 1,
                      onPageChanged: (value, _) {
                        setState(() {
                          categoryIndex = value;
                        });
                      }),
                ),
              ),
              // Carousel Indikator
              Container(
                margin: EdgeInsets.only(top: 13, left: 24, right: 24),
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            categoryIndex == 0 ? kBLackColor : kLineDarkColor,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            categoryIndex == 1 ? kBLackColor : kLineDarkColor,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            categoryIndex == 2 ? kBLackColor : kLineDarkColor,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
