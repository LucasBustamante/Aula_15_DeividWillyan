import 'package:flutter/material.dart';
import 'package:teste/pages/splash_page.dart';

import 'login.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/splash' : (_) => const SplashPage(),
        '/login' : (_) => Login(),
      },
    );
  }
}

