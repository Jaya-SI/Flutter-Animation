import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';

class HomeCategoryItem extends StatelessWidget {
  String title;
  String subtitle;
  String imageUrl;

  HomeCategoryItem({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: MediaQuery.of(context).size.width - (2 * 24),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 102,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                        height: 4,
                      ),
                      Text(
                        subtitle,
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: semibold,
                          color: kGreyColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Image.asset(
            imageUrl,
            height: 123,
          ),
        ],
      ),
    );
  }
}
