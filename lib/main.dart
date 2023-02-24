import 'package:dinotis/routes.dart';
import 'package:dinotis/screens/splash/splash_screen.dart';
import 'package:dinotis/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dinotis',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      // routes: {
      //   SplashScreen.routeName: (context) => SplashScreen(),
      // },
      routes: routes,
    );
  }
}