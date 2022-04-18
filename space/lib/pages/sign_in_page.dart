import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 24, left: 24),
        child: ListView(
          children: [
            Text(
              'Login to your \naccount',
              style: GoogleFonts.nunito(
                color: kBlackAccentColor,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 87,
                  height: 4,
                  decoration: BoxDecoration(
                      color: kBLackColor,
                      borderRadius: BorderRadius.circular(4)),
                ),
                SizedBox(
                  width: 4,
                ),
                Container(
                  width: 8,
                  height: 4,
                  decoration: BoxDecoration(
                      color: kBLackColor,
                      borderRadius: BorderRadius.circular(4)),
                )
              ],
            ),
            SizedBox(
              height: 48,
            ),
            //email form
            Container(
              width: 366,
              height: 56,
              decoration: BoxDecoration(
                color: kWhiteGreyColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Email',
                      hintStyle: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: semibold,
                        color: kGreyColor,
                      )),
                ),
              ),
            ),
            //pasword form
            SizedBox(
              height: 32,
            ),
            Container(
              width: 366,
              height: 56,
              decoration: BoxDecoration(
                color: kWhiteGreyColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: semibold,
                      color: kGreyColor,
                    ),
                  ),
                ),
              ),
            ),
            //Akhir dari sign-in email dan password
            SizedBox(
              height: 33,
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(4),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Remember Me',
                        style: GoogleFonts.lato(
                          color: kBlackAccentColor,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
