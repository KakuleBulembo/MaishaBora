import 'package:flutter/material.dart';
import 'package:maisha_bora/admin/dashboard_screen.dart';
import 'package:maisha_bora/auth/login_screen.dart';
import 'package:maisha_bora/auth/register_screen.dart';
import 'package:maisha_bora/welcome_screen.dart';

import 'constant.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => const WelcomeScreen(),
        LoginScreen.id : (context) => const LoginScreen(),
        RegisterScreen.id : (context) => const RegisterScreen(),
        DashboardScreen.id : (context) => const DashboardScreen(),
      },
    );
  }
}

