// ignore_for_file: prefer_const_constructors

import 'package:coffeeappui/pages/home_page.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  initState() {
    super.initState();
    navigator();
  }

  navigator() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            top: 0,
            right: 0,
            child: Image.asset(
              "/Users/User/Desktop/coffeeappui/lib/images/house.jpg",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: const Positioned(
                left: 140,
                bottom: 1000,
                right: 140,
                top: 100,
                child: Text("",
                    style: TextStyle(
                        color: Color.fromARGB(255, 11, 6, 6), fontSize: 40))),
          ),
        ],
      ),
    );
  }
}
