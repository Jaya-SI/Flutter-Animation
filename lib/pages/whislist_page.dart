import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';

import '../widget/product_grid_item.dart';
import '../widget/skeleton_item.dart';

class WhisListPage extends StatefulWidget {
  @override
  State<WhisListPage> createState() => _WhisListPageState();
}

class _WhisListPageState extends State<WhisListPage> {
  bool loading = true;
  bool grid = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        loading = false;
      });
    });
    super.initState();
  }

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
                'Whislist',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: semibold,
                  color: kBLackColor,
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/icon_search.png',
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
            height: 30,
          ),
          loading ? forLoading() : forGrid(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          backgroundColor: kWhiteColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, '/home');
            } else if (value == 1) {
              Navigator.pushNamed(context, '/whislist-page');
            } else if (value == 2) {
              Navigator.pushNamed(context, '/profile-page');
            }
          },
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
                color: kBlueColor,
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
    );
  }

  Widget forLoading() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
      ],
    );
  }

  Widget forGrid() {
    return Wrap(
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
    );
  }
}
