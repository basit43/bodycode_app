import 'package:bodycode/views/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../resources/color.dart';
import '../resources/images.dart';
import '../resources/size_config.dart';
import '../utils/routes/rotes_named.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesName.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          // systemNavigationBarColor: Colors.blue, // navigation bar color
          statusBarColor: AppColors.black, // status bar color
        ));
        return Scaffold(
          body: Container(
            color: AppColors.black,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 170,
                  width: 170,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(70)),
                    child: Image.asset(
                      Images.logo, // replace with your image asset

                      // fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
    });
  }
}
