
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationProvider{

  final FirebaseMessaging _firebaseMessaging = new FirebaseMessaging();

  static Future<dynamic> myBackgroundMessageHandler(Map<String, dynamic> message) async {
    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
    }

    // Or do other work.
  }

  initNotifications() async {

    await _firebaseMessaging.requestNotificationPermissions();
    final token = await _firebaseMessaging.getToken();

    print('firebase cloud messaging: $token');

    _firebaseMessaging.configure(
      onBackgroundMessage: myBackgroundMessageHandler,
      onMessage: _onMessage,
      onLaunch: _onLaunch,
      onResume: _onResume,
    );
  }

  Future<dynamic> _onMessage(Map<String, dynamic> message) async{
    print('========onMessage=======');
    print('message: $message');
  }

  Future<dynamic> _onLaunch(Map<String, dynamic> message) async{
    print('========onLaunch=======');
    print('message: $message');
  }

  Future<dynamic> _onResume(Map<String, dynamic> message) async{
    print('========onResume=======');
    print('message: $message');
  }
}