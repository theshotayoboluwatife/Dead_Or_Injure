import 'package:DeadAndInjure/src/presentation/screens/home/notification_screen.dart';
import 'package:DeadAndInjure/src/presentation/screens/home/settings_screen.dart';
import 'package:DeadAndInjure/src/presentation/screens/home/wallet_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';
import 'home_screen.dart';

class LandingScreen extends StatefulWidget {
  static const String routeName = '/landing_screen';

  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  PageController pageController = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3A243B),
      body: PageView(controller: pageController, children: [
        const HomeScreen(),
        const WalletScreen(),
        const NotificationScreen(),
        const SettingScreen(),
      ]),

      bottomSheet: Container(
        height: 85,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue[300],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  pageController.jumpToPage(0);
                });
              },
              child: Column(
                children: [
                  const Icon(
                    Icons.house_siding,
                    size: 28,
                    color: Colors.black,
                  ),
                  CustomText(
                    text: "Home",
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageController.jumpToPage(1);
                });
              },
              child: Column(
                children: [
                  const Icon(
                    Icons.account_balance_wallet,
                    size: 28,
                    color: Colors.black,
                  ),
                  CustomText(
                    text: "Wallet",
                    color: Colors.black,
                  ),                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageController.jumpToPage(2);
                });
              },
              child: Column(
                children: [
                  const Icon(
                    Icons.notifications,
                    size: 28,
                    color: Color(0XFF99A3B0),
                  ),
                  CustomText(
                    text: "Notifications",
                    color: Colors.black,
                  ),                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageController.jumpToPage(3);
                });
              },
              child: Column(
                children: [
                  const Icon(
                    Icons.notifications,
                    size: 28,
                    color: Color(0XFF99A3B0),
                  ),
                  CustomText(
                    text: "Settings",
                    color: Colors.black,
                  ),                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
