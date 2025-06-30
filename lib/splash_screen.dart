import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_monitoring_app/const/images.dart';
import 'package:health_monitoring_app/onbording_screen/onbording_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after a delay
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD8F3DC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(splashImage, height: 150),
            10.heightBox,

            "Welcome to Health Monitoring App".text
                .size(20)
                .fontWeight(FontWeight.bold)
                .color(Color(0xFF1D3557))
                .make(),

            5.heightBox,
            "Your health is our priority".text
                .size(16)
                .fontWeight(FontWeight.normal)
                .color(Color(0xFF457B9D))
                .make(),
          ],
        ),
      ),
    );
  }
}
