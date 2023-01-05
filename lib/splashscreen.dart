import 'package:flutter/material.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (ctx) => Login()), (Route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(title: const Text("Homestay Raya"), actions: [
            IconButton(
                onPressed: registerHome,
                icon: const Icon(Icons.app_registration_rounded))
          ]),
          body: const Center(child: Text("Homestay Raya Splash Screen")),
        ));
  }

  void registerHome() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }
}
