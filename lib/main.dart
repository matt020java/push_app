import 'package:flutter/material.dart';
import 'package:push_app/pages/home_page.dart';
import 'package:push_app/pages/mensaje_page.dart';
import 'package:push_app/providers/push_notification_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  void initState() {
    super.initState();

    final pushProvider = new PushNotificationProvider();
    pushProvider.initNotifications();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home' : (_)=> HomePage(),
        'mensaje' : (_)=> MensajePage()
      },
    );
  }
}
