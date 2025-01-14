import 'package:flutter/material.dart';
import 'dart:async';

import 'package:gho/LoginPage/loaginpage.dart';


class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  _WelcomepageState createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: Duration(milliseconds: 5000),
        vsync: this,
        value: 0,
        lowerBound: 0,
        upperBound: 1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);

    _controller.forward();

    Timer(
        Duration(seconds: 8),
            () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    LoginPage())
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(245, 121, 12, 0.1), // rgba(245, 121, 12, 0.1)
              Color.fromRGBO(31, 191, 194, 0.3), // rgba(31, 191, 194, 0.3)
            ],
          ),
        ),
        child: Stack(
          children: [

            FadeTransition(
              opacity: _animation,
              child: Center(
                child: Image.asset(
                  "assets/images/splash-removebg-preview.png",
                  height: 100,
                  width: 180,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
