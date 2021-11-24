import 'package:flutter/material.dart';
import 'package:prueba/script/home.dart';
import 'package:prueba/script/message.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
//import 'package:notificacion_push/services/key_sha.dart';

void main() {
  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await PushNotificationService.initializeApp();
    runApp(MyApp());
  }
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