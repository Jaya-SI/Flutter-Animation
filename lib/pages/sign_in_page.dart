import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:space/theme.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late FToast fToast;

  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool cekPass = false;
  bool rememberMe = false;
  bool loading = false;
  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

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
          if (cekPass)
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(
                'Email / Password kamu salah',
                style: GoogleFonts.nunito(
                  color: kRedColor,
                ),
              ),
            ),
          rememberCheckbox(),
          loginButton(),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 24),
              child: Text(
                'OR',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: semibold,
                  color: kGreyColor,
                ),
              ),
            ),
          ),
          loginWithGoogleButton(),
          registerButton(),
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
          controller: emailController,
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
              controller: passwordController,
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
              value: rememberMe,
              onChanged: (value) {
                rememberMe = value!;
              },
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
        onPressed: () {
          setState(() {
            loading = true;
          });
          Future.delayed(Duration(seconds: 2), () {
            setState(() {
              loading = false;
              if (passwordController.text != 'jayaganteng') {
                setState(() {
                  cekPass = true;
                });
                fToast.showToast(
                  child: errorToast(),
                  toastDuration: Duration(seconds: 2),
                  gravity: ToastGravity.BOTTOM,
                );
              } else {
                Navigator.pushNamed(context, '/home');
              }
            });
          });
        },
        child: loading
            ? CircularProgressIndicator(
                color: kWhiteColor,
                backgroundColor: kGreyColor,
              )
            : Text(
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

  Widget loginWithGoogleButton() {
    return Container(
      margin: EdgeInsets.only(top: 21),
      height: 56,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Login with Google',
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: semibold,
            color: kBlackAccentColor,
          ),
        ),
      ),
    );
  }

  Widget registerButton() {
    return Container(
      margin: EdgeInsets.only(top: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Dont have an account?',
            style: GoogleFonts.nunito(
              fontSize: 16,
              fontWeight: semibold,
              color: kGreyColor,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Register',
              style: GoogleFonts.nunito(
                color: kBlueColor,
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget errorToast() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kRedColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Text(
          'Password Salah',
          style: GoogleFonts.nunito(
            color: kWhiteColor,
            fontSize: 16,
            fontWeight: semibold,
          ),
        ),
      ),
    );
  }
}
