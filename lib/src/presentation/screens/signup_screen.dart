import 'package:DeadAndInjure/src/presentation/screens/signin_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';
import 'home/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/signup';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _confirmPasswordController = TextEditingController();

  late bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xFF3A243B),
        body: Container(
          padding: const EdgeInsets.all(30),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Image(
                  image: AssetImage("asset/images/di_icon.png"),
                  height: 200,
                  width: 200,
                ),
                TextFormField(
                  controller: _emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blue[300],
                      ),
                      hintText: "Email address",
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 4))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(_passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              _passwordVisible = !_passwordVisible;
                            },
                          );
                        },
                      ),
                      suffixIconColor: Colors.white70,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.blue[300],
                      ),
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 4))),
                  obscureText: _passwordVisible,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _confirmPasswordController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(_passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              _passwordVisible = !_passwordVisible;
                            },
                          );
                        },
                      ),
                      suffixIconColor: Colors.white70,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.blue[300],
                      ),
                      hintText: "Confirm Password",
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 4))),
                  obscureText: _passwordVisible,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, HomeScreen.routeName);},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Sign Up",
                          color: Colors.black,
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

                              size: 36.0, // Set the icon size
                            ),
                          ),
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[300], elevation: 20),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.15,
                ),
                Row(
                  children: [
                    CustomText(
                      text: "Already a Player?",
                      color: Colors.white,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                      child:  CustomText(
                        text: "Login",
                        color: Colors.blue[300],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
