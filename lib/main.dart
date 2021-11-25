import 'package:flutter/material.dart';
import 'package:prueba/script/home.dart';
import 'package:prueba/script/message.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:prueba/services/key_shar.dart';


void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await PushNotificationService.initializeApp();

    runApp(MyApp());
}

class MyApp extends StatelessWidget {
 // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
          'home': (_) => HomeScreen()  ,
          'message':(_) => MessageScreen(),
      },
      theme: ThemeData( primarySwatch: Colors.red, ),
    );
    }
  }