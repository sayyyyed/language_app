import 'package:flutter/material.dart';
import 'package:language_app/courses/courses.dart';
import 'package:language_app/dashboard/main_dashboard.dart';
import 'package:language_app/firebase/firebase_options.dart';
import 'package:language_app/homepage.dart';
import 'package:language_app/login.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Helvetica Rounded',  
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Login(),
    );
  }
}