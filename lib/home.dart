import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_monitoring_app/const/images.dart';
import 'package:health_monitoring_app/const/strings.dart';
import 'package:health_monitoring_app/controller/home_controller.dart';
import 'package:health_monitoring_app/view/chatscreen/chat_screen.dart';
import 'package:health_monitoring_app/view/heartScreen/heart_screen.dart';
import 'package:health_monitoring_app/view/homeScreen/home_screen.dart';
import 'package:health_monitoring_app/view/settingScreen/setting_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(
        icon: Image.asset(icHome, width: 26),
        label: home,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icHeart, width: 26),
        label: heart,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icChat, width: 26),
        label: chat,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icSetting, width: 26),
        label: setting,
      ),
    ];

    var navbody = [
      const HomeScreen(),
      const HeartScreen(),
      const ChatScreen(),
      const SettingScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navbody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: Colors.red,
          selectedLabelStyle: const TextStyle(fontFamily: 'Poppins'),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
