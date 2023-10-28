import 'package:DeadAndInjure/src/presentation/screens/home/landing_screen.dart';
import 'package:DeadAndInjure/src/presentation/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';
import 'home/home_screen.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = '/signin';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  //final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

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
                  width:  200,
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
                  focusedBorder:    UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width:  4)
                  )
                  ),
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
                      borderSide: BorderSide(color: Colors.blue, width: 4)
                    )
                  ),
                  obscureText: _passwordVisible,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 30,right:30),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LandingScreen.routeName);
                      },
                      child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Log in",
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
                    backgroundColor: Colors.blue[300],
                    elevation: 20
                  ) ,),
                ),
                const SizedBox(height: 30,),
                TextButton(onPressed: (){}, child:  CustomText(
                  text: "Forget Password?",
                  color: Colors.blue[300],
                ),),
                SizedBox(height: size.height * 0.1,),
                Row(
                  children: [
                    CustomText(
                      text: "New Player?",
                      color: Colors.white,
                    ),
                    TextButton(onPressed: () {Navigator.pushNamed(context, SignUpScreen.routeName);}, child: Text("Sign up", style: TextStyle(color: Colors.blue[300]),),) ,
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
