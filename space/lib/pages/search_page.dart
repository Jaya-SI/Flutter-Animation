import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';
import 'package:space/widget/recommendation_item.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kWhiteColor,
          elevation: 0,
          title: Row(
            children: [
              Icon(
                Icons.chevron_left,
                color: kBLackColor,
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
              )
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          SizedBox(
            height: 41,
          ),
          Text(
            'Recommendation',
            style: GoogleFonts.nunito(
              fontSize: 16,
              fontWeight: semibold,
              color: kBLackColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RecommendationItem(
            imageUrl: 'assets/image_product_list1.png',
            title: 'Poan Chair',
            price: 34,
          ),
          RecommendationItem(
            imageUrl: 'assets/image_product_list2.png',
            title: 'Poan Chair',
            price: 20,
          ),
          RecommendationItem(
            imageUrl: 'assets/image_product_list3.png',
            title: 'Poan Chair',
            price: 28,
          ),
          RecommendationItem(
            imageUrl: 'assets/image_product_list4.png',
            title: 'Poan Table',
            price: 50,
          ),
        ],
      ),
    );
  }
}
