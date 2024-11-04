import 'dart:async';

import 'package:flutter/material.dart';

import '../theme.dart';
import 'get_started_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  get kPrimaryColor => null;

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GetStartedPage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 234,
              height: 307,
              margin: EdgeInsets.only(
                bottom: 0,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
            Text(
              'MOTOGARAGE',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: medium,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
