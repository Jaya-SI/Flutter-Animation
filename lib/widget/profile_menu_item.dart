import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';

class ProfileItem extends StatelessWidget {
  String imageIcon;
  String title;

  bool lightMode;

  ProfileItem({
    required this.imageIcon,
    required this.title,
    required this.lightMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Image.asset(
            imageIcon,
            width: 24,
            color: lightMode? kBLackColor : kWhiteColor ,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: semibold,
              color: lightMode? kBLackColor : kWhiteColor ,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: kGreyColor,
          ),
        ],
      ),
    );
  }
}
