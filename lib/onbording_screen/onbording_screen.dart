import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_monitoring_app/const/images.dart';
import 'package:health_monitoring_app/home.dart';
import 'package:velocity_x/velocity_x.dart'; // replace with your actual home screen path

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;

  // List of onboarding data
  final List<Map<String, String>> onboardingData = [
    {
      'image': onbordingImage1,
      'title': 'Wear the Watch',
      'desc': 'Wear your health band tightly on wrist and turn on Bluetooth.',
    },
    {
      'image': onbordingImage2,
      'title': 'Place Finger',
      'desc':
          'Place your index finger gently on the metal dial for 30 seconds.',
    },
    {
      'image': onbordingImage3,
      'title': 'ECG Test Completed',
      'desc':
          'Your ECG test has been completed successfully. You can now view your heart activity report.',
    },
  ];

  void _nextStep() {
    if (_currentIndex < onboardingData.length - 1) {
      setState(() {
        _currentIndex++;
      });
    } else {
      // Navigate to home screen
      Get.to(() => const Home());
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = onboardingData[_currentIndex];

    return Scaffold(
      backgroundColor: Color(0xFFD8F3DC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(data['image']!, height: 180),
              30.heightBox,
              data['title']!.text.size(22).fontWeight(FontWeight.bold).make(),
              16.heightBox,
              data['desc']!.text.align(TextAlign.center).make(),
              30.heightBox,
              const Spacer(),
              ElevatedButton(
                onPressed: _nextStep,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.tealAccent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  _currentIndex == onboardingData.length - 1 ? 'Done' : 'Next',
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
