import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';

class ProductListItem extends StatelessWidget {
  String imageUrl;
  String title;
  int price;

  ProductListItem({
    required this.imageUrl,
    required this.title,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 60,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '\$$price',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
