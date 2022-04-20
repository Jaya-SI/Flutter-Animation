import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';

class HomePopularItem extends StatelessWidget {
  String title;
  String imageUrl;
  int price;
  bool favorite;

  HomePopularItem({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.favorite,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 301,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(left: 24),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                color: kWhiteGreyColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Image.asset(
                  imageUrl,
                  width: 160,
                ),
              ),
            ),
            Container(
              width: 200,
              padding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: semibold,
                      color: kBLackColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$$price',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: semibold,
                          color: kBLackColor,
                        ),
                      ),
                      Image.asset(
                        favorite
                            ? 'assets/button_whislist_active.png'
                            : 'assets/button_whislist.png',
                        width: 44,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
