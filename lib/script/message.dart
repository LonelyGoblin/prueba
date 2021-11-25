import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:prueba/services/key_shar.dart';
class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('He recibido la noti'),
      ),
      body: Center(
        child:
            Text('Un 7', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
