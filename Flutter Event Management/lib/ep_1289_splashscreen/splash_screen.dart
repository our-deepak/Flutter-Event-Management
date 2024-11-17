import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_22/ep_1289_splashscreen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        height: double.infinity,
        fit: BoxFit.fitHeight,
        image: NetworkImage( "https://pixlr.com/images/index/collage.webp" ),
      ),
    );
  }
}
