import 'package:flutter/material.dart';

import '../data/app_exceptions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   floatingActionButton: FloatingActionButton(
     child: const Icon(Icons.error),
       backgroundColor: Colors.blue,

       onPressed: (){
     throw InternetExceptions("Please check your internet connection");
   }),
    );
  }
}
