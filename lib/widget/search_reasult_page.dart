import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';
import 'package:shimmer/shimmer.dart';
import 'package:space/widget/product_grid_item.dart';
import 'package:space/widget/product_list_item.dart';
import 'package:space/widget/skeleton_item.dart';

class SearchResultPage extends StatefulWidget {
  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  bool cekGrid = true;
  bool cekLoading = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        cekLoading = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 110),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: kWhiteColor,
            elevation: 0,
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
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: kWhiteGreyColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            textInputAction: TextInputAction.go,
                            onFieldSubmitted: (value) {
                              Navigator.pushNamed(context, '/search-result');
                            },
                            decoration: InputDecoration.collapsed(
                              hintText: 'Search Furniture',
                              hintStyle: GoogleFonts.nunito(
                                color: kGreyColor,
                                fontSize: 16,
                                fontWeight: semibold,
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.close,
                          color: kGreyColor,
                        ),
                      ],
                    ),
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
            bottom: TabBar(
              indicatorColor: kBLackColor,
              labelColor: kBLackColor,
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Chair',
                ),
                Tab(
                  text: 'Table',
                ),
                Tab(
                  text: 'Accessories',
                ),
                Tab(
                  text: 'Living Room',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            forBody(),
            forBody(),
            forBody(),
            forBody(),
          ],
        ),
      ),
    );
  }

  Widget forBody() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Result for : Poang',
              style: GoogleFonts.nunito(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
            GestureDetector(
              onTap: (() {
                setState(() {
                  cekGrid = !cekGrid;
                });
              }),
              child: Image.asset(
                cekGrid ? 'assets/icon_list.png' : 'assets/icon_grid.png',
                width: 24,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        cekLoading
            ? forLoading()
            : cekGrid
                ? forGrid()
                : forList(),
      ],
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

  Widget forList() {
    return Column(
      children: [
        ProductListItem(
          imageUrl: 'assets/image_product_list1.png',
          title: 'Poan Chair',
          price: 34,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list2.png',
          title: 'Poan Chair',
          price: 20,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list3.png',
          title: 'Poan Chair',
          price: 28,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list4.png',
          title: 'Poan Table',
          price: 50,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list1.png',
          title: 'Poan Chair',
          price: 34,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list2.png',
          title: 'Poan Chair',
          price: 20,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list3.png',
          title: 'Poan Chair',
          price: 28,
        ),
        ProductListItem(
          imageUrl: 'assets/image_product_list4.png',
          title: 'Poan Table',
          price: 50,
        ),
      ],
    );
  }
}
