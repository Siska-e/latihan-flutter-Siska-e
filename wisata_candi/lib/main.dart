import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/detail_screen.dart';
import 'package:wisata_candi/favorite_screen.dart';
import 'package:wisata_candi/home_screen.dart';
import 'package:wisata_candi/models/profile_screen.dart';
import 'package:wisata_candi/signup_screen.dart';
import 'package:wisata_candi/widgets/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpScreen(),
      // home: SearchScreen(),
      // home: ProfileScreen(),
      // home: DetailScreen(candi: candiList[0]),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // TODO: 1. deklarasi variabel
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 2. Properti BODY berupa widget yang ditampilkan
      body: _children[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.deepPurple[50]),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple[100],
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.deepPurple,),
            label: "Home",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.deepPurple,),
            label: "Search",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.deepPurple,),
            label: "Favorite",
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.deepPurple,),
            label: "Profile",
            ),

          ]
        ),
      ),      
      // TODO: 3. Buat properti bottomNavigationBar dengan nilai THEME
      // TODO: 4. data dan child dari THEME
    );
  }
}