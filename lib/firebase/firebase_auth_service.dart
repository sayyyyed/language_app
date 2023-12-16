import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthService {
  final FirebaseAuth _authService = FirebaseAuth.instance;
  Future<User?> signUpWithEmailandPassword(
      String email, password, BuildContext context) async {
    try {
      UserCredential credential = await _authService
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e) {
      final String errorMessage = e.toString();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(errorMessage),
        backgroundColor: Colors.red,
      ));
    }
  }

  Future<User?> loginWithEmailandPassword(
      String email, password, BuildContext context) async {
    try {
      UserCredential credential = await _authService.signInWithEmailAndPassword(
          email: email, password: password);

      return credential.user;
    } catch (e) {
      final String errorMessage = e.toString();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(errorMessage),
        backgroundColor: Colors.red,
      ));
    }
  }


  Future<String?> getUserFirstName(String email) async {
    try {
      // Query Firestore to get user data based on email
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .where('email', isEqualTo: email)
          .limit(1)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        //debug print
        print('User data: ${querySnapshot.docs.first.data()}');
        return querySnapshot.docs.first.get('firstName') as String?;
      } else {
        return "null";
      }
    } catch (e) {
      print('Error fetching user data: $e');
      return null;
    }
  }
}


