import 'package:flutter/material.dart';
import 'package:language_app/services.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: UserService.fetchUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            if (snapshot.hasError) return Text(snapshot.error.toString());
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Image.network(snapshot.data![index].avatar!),
                      Text(snapshot.data![index].firstName!),
                      Text(snapshot.data![index].lastName!),
                      Text(snapshot.data![index].email!),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
  );
 }
}