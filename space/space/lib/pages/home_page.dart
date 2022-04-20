import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          backgroundColor: kWhiteColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
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
      body: Stack(
        children: [
          Image.asset('assets/image_background.png'),
          ListView(
            children: [
              // Header/Title
              Container(
                margin: EdgeInsets.only(top: 24),
                padding: EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/logo_dark.png',
                      width: 53,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Space',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icon_cart.png',
                      width: 30,
                    ),
                  ],
                ),
              ),
              //Search Bar
              Container(
                margin: EdgeInsets.only(top: 30, left: 24, right: 24),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search Furniture',
                      style: GoogleFonts.nunito(
                        color: kGreyColor,
                        fontSize: 16,
                        fontWeight: semibold,
                      ),
                    ),
                    Image.asset(
                      'assets/icon_search.png',
                      width: 24,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
