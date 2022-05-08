import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      body: Stack(
        children: [
          Image.asset(
            'assets/image_background.png',
          ),
          Container(
            margin: EdgeInsets.only(top: 95),
            child: Image.asset(
              'assets/image_detail1.png',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 66,
                left: 20,
              ),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kWhiteColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: kLineDarkColor,
                ),
              ),
              child: Icon(
                Icons.chevron_left,
              ),
            ),
          )
        ],
      ),
    );
  }
}
