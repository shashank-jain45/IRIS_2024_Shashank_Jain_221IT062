import 'dart:convert';
import 'dart:math';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;

class PushNotifications {
  static final _firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  ///Intializes the fcm by requesting for permission
  static Future init() async {
    await _firebaseMessaging.requestPermission(
        alert: true,
        announcement: true,
        badge: true,
        carPlay: true,
        criticalAlert: true,
        provisional: true,
        sound: true);
  }

  ///Sends out notification request

  Future sendNotifications(String title, String body) async {
    final token = await _firebaseMessaging.getToken();
    // print(token);
    var data = {
      "to": token,
      "priority": "high",
      "notification": {
        "title": title,
        "body": body,
      }
    };

    await http.post(
      Uri.parse("https://fcm.googleapis.com/fcm/send"),
      body: jsonEncode(data),
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
        "Authorization":
            "key=AAAAIf2SSEM:APA91bFfM3XbH0kV0R3fvzE1DFdbxESerzkInyOL0fSfXFh-8WdcEg-D3e5UlfpN1CDOmDjwGIg4tY0qA6dinzUBDIRDKo2ZHgllcyeil-iLLDW5I-QwtMKKL3XozC97Yzl02TVXftai"
      },
    );
  }

  ///Listens to notifaction request and triggers [showNotification] when a new notifcation is found
  void firebaseInit(BuildContext context) {
    FirebaseMessaging.onMessage.listen((message) async {
      // print(message.notification!.title);
      // print(message.notification!.body);

      await initLocalNotifications(context, message);
      await showNotification(message);
    });
  }

  ///Displays new notification recieved with the help of local notification plugin
  Future showNotification(RemoteMessage message) async {
    AndroidNotificationChannel channel = AndroidNotificationChannel(
      Random.secure().nextInt(100000).toString(),
      "High importance",
      importance: Importance.max,
    );

    AndroidNotificationDetails details = AndroidNotificationDetails(
        channel.id, channel.name,
        channelDescription: "DESCRIPTION",
        importance: Importance.max,
        ticker: "ticker",
        priority: Priority.high);

    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails(
      presentBadge: true,
      presentAlert: true,
      presentSound: true,
    );

    NotificationDetails notificationDetails =
        NotificationDetails(android: details, iOS: darwinNotificationDetails);

    Future.delayed(
      Duration.zero,
      () {
        _flutterLocalNotificationsPlugin.show(
          0,
          message.notification!.title,
          message.notification!.body,
          notificationDetails,
        );
      },
    );
  }

  ///Intializes local notifications
  Future initLocalNotifications(
      BuildContext context, RemoteMessage message) async {
    var androidInitialization =
        const AndroidInitializationSettings("@mipmap/ic_launcher");

    var initializationSetting =
        InitializationSettings(android: androidInitialization);

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSetting,
      onDidReceiveNotificationResponse: (details) {
        // print(details.payload);
      },
    );
  }
}
