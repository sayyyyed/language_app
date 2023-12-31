// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:language_app/services/firebase_auth_service.dart' as lib1;
import 'package:language_app/views/homepage.dart';
import 'package:language_app/views/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _loginState();
}

class _loginState extends State<Login> {
  final lib1.FirebaseAuthService _authService = lib1.FirebaseAuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

 void login() async {
  String email = _emailController.text;
  String password = _passwordController.text;
  User? user = await _authService.loginWithEmailandPassword(email, password, context);

  if (user != null) {
    String? firstName = await _authService.getUserFirstName(email);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Login successful"),
        backgroundColor: Colors.green,
      ),
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(firstName: firstName),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Let's learn with Lingolatte",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email Address",
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.key),
                hintText: "Password",
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 44, 53, 118)),
                  onPressed: () {
                    login();
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don’t have an account?"),
                const SizedBox(width: 4.0),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()));
                    },
                    child: const Text(
                      "Register.",
                      style: TextStyle(color: Color.fromARGB(255, 44, 53, 118)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
