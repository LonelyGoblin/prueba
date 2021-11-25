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


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp>{

  final GlobalKey<NavigatorState> navegatorkey = new GlobalKey<NavigatorState>();

  final GlobalKey<ScaffoldMessengerState> messageKey = new GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();

    PushNotificationService.streamMessageController.listen((message) {
      print('El mensaje  $message');

      navegatorkey.currentState?.pushNamed('message', arguments: message);

      final snackBar = SnackBar(content: Text(message));
      messageKey.currentState?.showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Holi',
      navigatorKey: navegatorkey,
      scaffoldMessengerKey: messageKey,
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