import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeNotification'),
      ),
      body: Center(
        child: Text('Home Notification Screen'),
      ),
    );
  }
}
