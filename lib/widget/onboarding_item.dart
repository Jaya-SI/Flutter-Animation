import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';

class OnboardingItem extends StatelessWidget {
  String imageUrl;
  String title;
  String subTitile;

  OnboardingItem(
      {required this.imageUrl, required this.title, required this.subTitile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 99,
        ),
        Image.asset(
          imageUrl,
          width: double.infinity,
          height: 322,
        ),
        SizedBox(
          height: 127,
        ),
        Text(
          title,
          style: GoogleFonts.nunito(
            color: kBLackColor,
            fontSize: 26,
            fontWeight: regular,
          ),
        ),
        Text(
          subTitile,
          style: GoogleFonts.nunito(
            color: kGreyColor,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
