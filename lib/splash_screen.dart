import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:entry/entry.dart';

import 'login_screen.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 5);
    return  Timer(duration, navigationPage);
  }

  void navigationPage() async {
  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(

      backgroundColor: Colors.amber,
      body: Center(
        child:  Entry.all(
          // visible: visible,
            delay: const Duration(milliseconds: 200),
            duration: const Duration(milliseconds: 1500),
            child: SvgPicture.asset("assets/images/splash.svg")),
      ),
    );
  }
}
