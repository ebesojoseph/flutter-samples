import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color formColor = Color(0xFFF5F5F5);
const Color colorRed = Color(0xFFCC2131);
const Color colorGrey = Color(0xFF9E9EA8);
const Color darkRed = Color(0xFFBC1C2B);
const Color textGray = Color(0xFF9A99A3);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

void navigate(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    return SignIn();
  }));
}

void navigateToSignUp(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    return SignUp();
  }));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Welcome();
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/art_board_1.png'),
                fit: BoxFit.cover),
          ),
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: MediaQuery
              .of(context)
              .size
              .height,
          padding: EdgeInsets.fromLTRB(36, 24, 36, 16),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 72),
                  _customText('WELCOME',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 36),
                  SizedBox(
                    height: 16,
                  ),
                  _customText(
                      'Capital insider your number one mobile banking service',
                      fontSize: 16),
                  const SizedBox(height: 40),
                  Image.asset(
                    'assets/images/ebs_logo.png',
                    height: 300,
                    width: 400,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  FormButton(
                    'Sign In with Google',
                    color: colorRed,
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w500),
                    onPressed: () => {navigate(context)},
                  ),
                  SizedBox(height: 16),
                  FormButton(
                    'Create An Account',
                    bgColor: Colors.black,
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w400),
                    onPressed: () =>
                    {
                      navigateToSignUp(context)
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _customText(
                    'SIGN UP', fontWeight: FontWeight.w700, fontSize: 21)
              ],
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/art_board_2.png'),
                  fit: BoxFit.cover),
            ),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            padding: EdgeInsets.fromLTRB(0, 140, 0, 0),
            child: Container(
              padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  _customText('Welcome back',
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.bold,
                  color: colorRed,
                  fontSize: 28),
              _customText('Continue to sign up!',
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w400,
                  color: colorRed,
                  fontSize: 28),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    FormField('NAME', hintText: 'Name'),
                    SizedBox(
                      height: 8,
                    ),
                    FormField('EMAIL', hintText: 'Email'),
                    SizedBox(
                      height: 8,
                    ),
                    FormField(
                      'PASSWORD',
                      obscure:true,
                      hintText: 'Password',
                    ),
                    SizedBox(height: 8),
                    FormField(
                      'CONFIRM PASSWORD',
                      obscure:true,
                      hintText: 'Confirm Password',
                    ),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (val) {},
                          activeColor: colorRed,
                          side: BorderSide(color: colorRed),
                        ),
                        Expanded(child: _customText('By signing up you agree to our terms & conditions and privacy policy',
                            color: Colors.black87, fontSize: 14,textAlign: TextAlign.start)),

                      ],
                    ),
                    SizedBox(height: 8,),
                    FormButton('Sign Up', bgColor: colorRed,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _customText('Have an Account?',color: Colors.black38,
                            textAlign: TextAlign.end,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                        TextButton(
                          onPressed: () {},
                          child: _customText('Sign Up',
                              color: colorRed,
                              textAlign: TextAlign.center,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        )),)
    ,
    );
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _customText(
                  'SIGN IN', fontWeight: FontWeight.w700, fontSize: 21)
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/art_board_2.png'),
                  fit: BoxFit.cover),
            ),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            padding: EdgeInsets.fromLTRB(0, 160, 0, 0),
            child: Container(
              padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _customText('Welcome back',
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.bold,
                      color: colorRed,
                      fontSize: 28),
                  _customText('Continue to sign in!',
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w400,
                      color: colorRed,
                      fontSize: 28),
                  SizedBox(
                    height: 24,
                  ),
                  FormField('EMAIL', hintText: 'Email'),
                  SizedBox(
                    height: 16,
                  ),
                  FormField(
                    'PASSWORD',
                    obscure:true,
                    hintText: 'Password',
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _customText('Forgot Password?',
                          color: colorRed,
                          textAlign: TextAlign.end,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (val) {},
                        activeColor: colorRed,
                        side: BorderSide(color: colorRed),
                      ),
                      _customText('Remember me and keep me logged in',
                          color: Colors.black87, fontSize: 16)
                    ],
                  ),
                  SizedBox(height: 8,),
                  FormButton('Sign In', bgColor: colorRed,),
                  SizedBox(height: 8,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _customText('Don\'t have an account?',
                            color: Colors.black38,
                            textAlign: TextAlign.end,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: _customText('Sign Up',
                            color: colorRed,
                            textAlign: TextAlign.center,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),);
  }
}

class FormField extends StatelessWidget {
  final String text;
  final String hintText;
  final bool obscure;
  FormField(this.text, {this.hintText = '',this.obscure = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: _customText(text,
              color: Colors.black87, fontSize: 14, fontWeight: FontWeight.w600),
        ),
        Container(
          height: 48,
          decoration: BoxDecoration(
              color: formColor, borderRadius: BorderRadius.circular(6)),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: TextFormField(
              obscureText: obscure,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: colorGrey,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(16, 0, 8, 0),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class FormButton extends StatelessWidget {
  final String text;
  final Color? bgColor;
  final void Function()? onPressed;
  final TextStyle? textStyle;
  final FontWeight? weight;
  final double? size;
  final Color? color;

  FormButton(this.text,
      {this.bgColor, this.onPressed, this.textStyle, this.color = Colors.white,
        this.size = 18,
        this.weight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: 56,
      decoration: BoxDecoration(
        color: bgColor == null ? Color(0xFFF5F5F5) : bgColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8)),
      ),
      child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                  color: color,
                  fontSize: size,
                  fontFamily: 'Avenir',
                  fontWeight: weight),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}

Text _customText(String text,
    {FontWeight? fontWeight = FontWeight.w400,
      Color? color = Colors.white,
      double? fontSize = 14,
      TextAlign? textAlign = TextAlign.center,}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
        fontWeight: fontWeight,
        color: color,
        fontFamily: 'Avenir',
        fontSize: fontSize),
  );
}
