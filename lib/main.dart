import 'package:DeadAndInjure/src/presentation/screens/home_screen.dart';
import 'package:DeadAndInjure/src/presentation/screens/signin_screen.dart';
import 'package:DeadAndInjure/src/presentation/screens/signup_screen.dart';
import 'package:DeadAndInjure/src/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dead And Injure',
      theme: CustomAppTheme.customTheme,
      home: SignInScreen(),
      routes: {
        SignUpScreen.routeName:  (_)=> SignUpScreen(),
        SignInScreen.routeName:  (_)=> SignInScreen(),
        HomeScreen.routeName:  (_)=> HomeScreen(),
      },
    );
  }
}
