import 'package:language_app/home.dart';
import 'package:language_app/home_user.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
 int currentIndex = 0;

 void onTap(int index) {
   setState(() {
     currentIndex = index;
   });  }

   List pages = [User(), HomeUser()];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Comm",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],

        selectedItemColor : Colors.deepPurple,
        unselectedItemColor : Colors.grey[300],
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 30,
      ),
    );
  }
}
