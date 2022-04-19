import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/theme.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 24, left: 24),
        child: ListView(children: [
          title(),
          SizedBox(
            height: 55,
          ),
          emailinput(),
          passwordinput(),
          rememberCheckbox(),
          loginButton(),
        ]),
      ),
    );
  }

  Widget title() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            'Login to your \naccount',
            style: GoogleFonts.nunito(
              color: kBlackAccentColor,
              fontSize: 24,
              fontWeight: bold,
            ),
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
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Container(
              width: 8,
              height: 4,
              decoration: BoxDecoration(
                color: kBLackColor,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget emailinput() {
    return Container(
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
                color: kGreyColor,
                fontSize: 16,
                fontWeight: semibold,
              )),
        ),
      ),
    );
  }

  Widget passwordinput() {
    return Container(
      margin: EdgeInsets.only(top: 32),
      padding: EdgeInsets.all(
        16,
      ),
      decoration: BoxDecoration(
        color: kWhiteGreyColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration.collapsed(
                hintText: 'Password',
                hintStyle: GoogleFonts.nunito(
                  fontSize: 16,
                  color: kGreyColor,
                  fontWeight: semibold,
                ),
              ),
            ),
          ),
          Icon(
            Icons.visibility_outlined,
            color: kGreyColor,
          ),
        ],
      ),
    );
  }

  Widget rememberCheckbox() {
    return Container(
      margin: EdgeInsets.only(top: 33),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              value: false,
              onChanged: (value) {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          SizedBox(width: 12),
          Text(
            'Remember me',
            style: GoogleFonts.lato(
              color: kBlackAccentColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget loginButton() {
    return Container(
      margin: EdgeInsets.only(top: 32),
      height: 56,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          backgroundColor: kBLackColor,
        ),
        onPressed: () {},
        child: Text(
          'Login',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: semibold,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
