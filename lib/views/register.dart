import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:language_app/views/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _register() async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text,
    );

    // Store additional user information in Firestore
    await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
      'firstName': _firstNameController.text,
      'lastName': _lastNameController.text,
      'email': _emailController.text.trim(),
      // Add more fields as needed
    });

    // Registration successful, you can navigate to the next screen or perform other actions
    print('Registration successful: ${userCredential.user?.email}');

  } catch (e) {
    // Handle registration errors
    print('Error during registration: $e');
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
              "Let's Join Lingolatte",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20.0,
            ),

            //add input fullname and lastname 
            TextField(
              controller: _firstNameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "First name",
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextField(
              controller: _lastNameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Last Name",
              ),
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
                  backgroundColor: Color.fromARGB(255, 44, 53, 118),
                ),
                onPressed: _register,
                child: const Text(
                  "Sign up",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already has an account?"),
                const SizedBox(width: 8.0),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: const Text(
                    "Login.",
                    style: TextStyle(color: Color.fromARGB(255, 44, 53, 118)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
