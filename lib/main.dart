import 'package:books_app/constants.dart';
import 'package:books_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

import 'features/home/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:kprimaryColor,

      ),
      home: SplashView(),
      routes: {
        "homeView": (context) => HomeView(),
      },


    );
  }
}

