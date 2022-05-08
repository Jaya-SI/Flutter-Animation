import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';
import 'package:space/widget/profile_menu_item.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool tesLight = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tesLight ? kWhiteGreyColor : kDarkColor,
      body: Stack(
        children: [
          Image.asset(
            'assets/image_background.png',
          ),
          ListView(
            children: [
              SizedBox(
                height: 130,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 24,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/image_profile.png',
                          width: 120,
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Jaya Saputra',
                          style: GoogleFonts.nunito(
                            fontSize: 24,
                            fontWeight: medium,
                            color: tesLight ? kBLackColor : kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tesLight = !tesLight;
                        });
                      },
                      child: Container(
                        width: 88,
                        height: 44,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: tesLight ? kGreyColor : kWhiteColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Align(
                          alignment: tesLight
                              ? Alignment.centerLeft
                              : Alignment.centerRight,
                          child: Image.asset(tesLight
                              ? 'assets/icon_siwtch_dark.png'
                              : 'assets/icon_switch_light.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                decoration: BoxDecoration(
                  color: tesLight ? kWhiteColor : kDarktwoColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(36),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileItem(
                      imageIcon: 'assets/icon_profile.png',
                      title: 'My Profile',
                      lightMode: tesLight,
                    ),
                    ProfileItem(
                      imageIcon: 'assets/icon_addres.png',
                      title: 'My Address',
                      lightMode: tesLight,
                    ),
                    ProfileItem(
                      imageIcon: 'assets/icon_order.png',
                      title: 'My Order',
                      lightMode: tesLight,
                    ),
                    ProfileItem(
                      imageIcon: 'assets/icon_payment.png',
                      title: 'Payment Method',
                      lightMode: tesLight,
                    ),
                    ProfileItem(
                      imageIcon: 'assets/icon_whislis.png',
                      title: 'My Whislist',
                      lightMode: tesLight,
                    ),
                    ProfileItem(
                      imageIcon: 'assets/icon_faq.png',
                      title: 'Frequently Asked Questions',
                      lightMode: tesLight,
                    ),
                    ProfileItem(
                      imageIcon: 'assets/icon_cs.png',
                      title: 'Customer Care',
                      lightMode: tesLight,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          backgroundColor: tesLight ? kWhiteColor : kDarkColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, '/home');
            } else if (value == 1) {
              Navigator.pushNamed(context, '/whislist-page');
            } else if (value == 2) {
              Navigator.pushNamed(context, '/profile-page');
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                color: tesLight ? kBLackColor : kWhiteColor,
                width: 24,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_whislis.png',
                color: tesLight ? kBLackColor : kWhiteColor,
                width: 24,
              ),
              label: 'Whislist',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_profile.png',
                width: 24,
                color: kBlueColor,
              ),
              label: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
