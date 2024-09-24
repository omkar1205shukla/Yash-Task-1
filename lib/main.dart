import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile1/views/login_views.dart';
import 'package:profile1/views/profile/profile_screen.dart';
import 'package:profile1/views/register_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/login', page: () => const LoginView()),
        GetPage(name: '/register', page: () => const RegisterView()),
        GetPage(name: '/profile', page: () => const ProfileScreen()),
      ],
      initialRoute: '/login',
    );
  }
}
