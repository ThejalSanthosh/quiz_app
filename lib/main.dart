import 'package:flutter/material.dart';
import 'package:quiz_app/view/splash_screen/splash_screen.dart';

void main(){

runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: SplashScreen(),
    );
  }
}