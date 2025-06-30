import 'package:flutter/material.dart';
import 'package:health_monitoring_app/const/images.dart';
import 'package:health_monitoring_app/customWidgets/infotile.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF8EF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage(icUser),
              radius: 20,
            ),
          ),
        ],
      ),
      body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(icHeart, height: 150),
              16.heightBox,
              "Real-time heart rate\ninsights for better health"
                  .text
                  .xl
                  .semiBold
                  .center
                  .make(),
              24.heightBox,

              // Health Info List
              infoTile(
                "Heart Rate",
                "We can help you track your Pulse and analyze your heart health.",
              ),
              infoTile(
                "Blood Oxygen Saturation",
                "We can help you keep a track how much oxygen your red blood cells are carrying.",
              ),
              infoTile(
                "Blood Pressure",
                "We can help you keep a record of your blood pressure readings.",
              ),
              infoTile(
                "VO2 Max",
                "We can help you to calculate the maximum amount of oxygen your body can consume during exercise.",
              ),

              20.heightBox,

              // ECG Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to ECG flow
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade800,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text("Initiate ECG Test"),
              ),
            ],
          ).p20().scrollVertical(),
    );
  }
}
