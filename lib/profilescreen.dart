import 'package:flutter/material.dart';

import 'mainmenuwidget.dart';
import 'models/user.dart';

class ProfileScreen extends StatefulWidget {
  final User user;
  const ProfileScreen({super.key, required this.user});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(title: const Text("Profile")),
          body: const Center(child: Text("Profile")),
          drawer: MainMenuWidget(
            user: widget.user,
          )),
    );
  }
}
