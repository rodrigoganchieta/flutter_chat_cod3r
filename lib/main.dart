import 'package:flutter_chat_cod3r/core/services/notification/chat_notification_service.dart';
import 'package:flutter_chat_cod3r/pages/auth_or_app_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChatNotificationService(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Chat Cod3r',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AuthOrAppPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
