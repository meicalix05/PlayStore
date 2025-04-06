import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_play_emulator/screens/search_screen.dart';
import 'package:google_play_emulator/screens/splash_screen.dart';
import 'screens/apps_screen.dart';
import 'screens/games_screen.dart';
import 'screens/movies_screen.dart';
import 'screens/books_screen.dart';
import 'screens/kids_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Play',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class GooglePlayScreen extends StatefulWidget {
  @override
  _GooglePlayScreenState createState() => _GooglePlayScreenState();
}

class _GooglePlayScreenState extends State<GooglePlayScreen> {
  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();
  int _currentIndex = 0;

  final List<Widget> _screens = [
    GamesScreen(),
    AppsScreen(),
    MoviesScreen(),
    BooksScreen(),
    KidsScreen(),
    SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    Platform.isAndroid
                        ? 'assets/images/GOOGLEPLAYICONLOGO.png'
                        : 'assets/images/GOOGLEPLAYLOGO.png',
                    width: Platform.isAndroid ? 30 : 130,
                    height: 30,
                  ),
                ],
              ),
              if (_isSearching)
                Center(
                  child: Container(
                    margin: EdgeInsets.only(left: Platform.isAndroid ? 45 : 0),
                    width: Platform.isAndroid ? 300 : 700,
                    height: 40,
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Buscar aplicaciones y juegos',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 12.0,
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.2),
                      ),
                      style: TextStyle(color: Colors.grey),
                      autofocus: true,
                    ),
                  ),
                ),
            ],
          ),
          actions: [
            !Platform.isAndroid
                ? IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      _isSearching = !_isSearching;
                    });
                    if (_isSearching) {
                      _searchController.clear();
                    }
                  },
                )
                : Container(),
            Platform.isAndroid
                ? IconButton(icon: Icon(Icons.notifications), onPressed: () {})
                : IconButton(
                  icon: Icon(Icons.help_outline_rounded),
                  onPressed: () {},
                ),
            PopupMenuButton<String>(
              icon: Icon(Icons.account_circle),
              onSelected: (String value) {
                if (value == 'logout') {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                }
              },
              itemBuilder:
                  (BuildContext context) => <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      value: 'logout',
                      child: Text('Cerrar sesión'),
                    ),
                  ],
            ),
          ],
          bottom:
              Platform.isAndroid
                  ? null
                  : TabBar(
                    tabs: [
                      Tab(text: 'Juegos'),
                      Tab(text: 'Apps'),
                      Tab(text: 'Películas'),
                      Tab(text: 'Libros'),
                      Tab(text: 'Niños'),
                    ],
                  ),
        ),
        body:
            Platform.isAndroid
                ? _screens[_currentIndex]
                : TabBarView(children: _screens),
        bottomNavigationBar:
            Platform.isAndroid
                ? BottomNavigationBar(
                  currentIndex: _currentIndex,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  backgroundColor: Colors.white,
                  selectedItemColor: Colors.indigo,
                  unselectedItemColor: Colors.grey,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.videogame_asset),
                      label: 'Juegos',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.apps),
                      label: 'Apps',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.movie),
                      label: 'Películas',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.book),
                      label: 'Libros',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.child_care),
                      label: 'Niños',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: 'Buscar',
                    ),
                  ],
                )
                : null,
      ),
    );
  }
}
