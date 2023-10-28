import 'package:DeadAndInjure/src/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xFF3A243B),
        body: Container(
          padding: const EdgeInsets.all(30),
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage("asset/images/di_icon.png"),
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Begin",
                            color: Colors.pink,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white70,
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(
                                Icons.navigate_next,
                                color: Colors.black,
                                size: 36.0,
                              ),
                            ),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[300], elevation: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
