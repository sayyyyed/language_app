import 'package:flutter/material.dart';
import 'package:language_app/services/firebase_options.dart';
import 'package:language_app/views/courses/courses.dart';
import 'package:language_app/views/dashboard/main_dashboard.dart';
import 'package:language_app/views/homepage.dart';
import 'package:language_app/views/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:language_app/views/register.dart';
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
       routes: {
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/homepage': (context) =>  MyHomePage(),
        '/dashboard': (context) =>  const Dashboard(),
        '/course': (context) =>  const Courses(category: '', courses: [],),
       },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Helvetica Rounded',  
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const Login(),
    );
  }
}