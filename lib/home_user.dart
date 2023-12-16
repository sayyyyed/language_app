// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:language_app/firebase/firestore_service.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});
  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              "List Community",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            StreamBuilder<QuerySnapshot>(
                stream: FirestoreService().getUsers(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    } else {
                      List userList = snapshot.data!.docs;
                      return SizedBox(
                          width: double.infinity,
                          child: ListView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(vertical: 15),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: userList.length,
                              itemBuilder: (context, index) {
                                DocumentSnapshot documentSnapshot =
                                    userList[index];
                                Map<String, dynamic> data = documentSnapshot
                                    .data() as Map<String, dynamic>;
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  child: Material(
                                      color: Colors.purple[50],
                                      elevation: 2,
                                      borderRadius: BorderRadius.circular(10),
                                      child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(data['fullname']),
                                              Text(data['username']),
                                              Text(data['email']),
                                            ],
                                          ))),
                                );
                              }));
                    }
                  }
                })
          ],
        ),
      )),
    );
  }
}
