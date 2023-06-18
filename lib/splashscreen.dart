import 'dart:async';
import 'package:flutter/material.dart';
import 'app/modules/home/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Timer? timer;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 6),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    HomeView(),))
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 600,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 145,
                      decoration:  const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("asset/devicon.png"))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
