import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:space/theme.dart';

class ProductGridItem extends StatelessWidget {
  String imageUrl;
  String title;
  int price;
  bool favorite;

  ProductGridItem({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.favorite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: (MediaQuery.of(context).size.width - 82) / 2,
        padding: EdgeInsets.all(
          20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              imageUrl,
              height: 134,
              width: double.infinity,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: GoogleFonts.nunito(
                fontSize: 16,
                fontWeight: semibold,
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
                  ),
                ),
                Image.asset(
                  favorite
                      ? 'assets/button_whislist_active.png'
                      : 'assets/button_whislist.png',
                  width: 44,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
