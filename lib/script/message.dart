import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MessageScreen'),
      ),
      body: Center(
        child:
            Text('Message Notification Screen', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
