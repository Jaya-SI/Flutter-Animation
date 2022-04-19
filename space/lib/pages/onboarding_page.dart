import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';
import 'package:space/widget/onboarding_item.dart';

class OnboardingPage extends StatefulWidget {
  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int nextIndex = 0;
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: [
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding1.png',
                  title: 'Buy Furniture Easily',
                  subTitile:
                      'Aliqua id fugiat nostrud irure ex duis ea \nquis id quis ad et. Sunt qui esse',
                ),
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding2.png',
                  title: 'Fast Delivery',
                  subTitile:
                      'Aliqua id fugiat nostrud irure ex duis ea \nquis id quis ad et. Sunt qui esse',
                ),
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding3.png',
                  title: 'Best Price',
                  subTitile:
                      'Aliqua id fugiat nostrud irure ex duis ea \nquis id quis ad et. Sunt qui esse',
                ),
              ],
              options: CarouselOptions(
                  height: double.infinity,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  initialPage: nextIndex,
                  onPageChanged: (index, _) {
                    setState(() {
                      nextIndex = index;
                    });
                  }),
              carouselController: controller,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/sign-in');
                  },
                  child: Text(
                    'SKIP',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: kBLackColor,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: nextIndex == 0 ? kBLackColor : kLineDarkColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: nextIndex == 1 ? kBLackColor : kLineDarkColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: nextIndex == 2 ? kBLackColor : kLineDarkColor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    if (nextIndex == 2) {
                      Navigator.pushNamed(context, '/sign-in');
                    } else {
                      controller.nextPage();
                    }
                    controller.nextPage();
                  },
                  child: Text(
                    'NEXT',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: kBLackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 29,
          ),
        ],
      ),
    );
  }
}
