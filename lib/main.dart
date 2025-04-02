import 'package:flutter/material.dart';
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
      home: LoginScreen(),
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/GOOGLEPLAY_LOGO.png',
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(width: 8),
                  Text('Google Play'),
                ],
              ),
              if (_isSearching)
                Center(
                  child: Container(
                    width: 400,
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
            IconButton(
              icon: Icon(_isSearching ? Icons.close : Icons.search),
              onPressed: () {
                setState(() {
                  if (_isSearching) {
                    _isSearching = false;
                    _searchController.clear();
                  } else {
                    _isSearching = true;
                  }
                });
              },
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
          bottom: TabBar(
            tabs: [
              Tab(text: 'Juegos'),
              Tab(text: 'Apps'),
              Tab(text: 'Películas'),
              Tab(text: 'Libros'),
              Tab(text: 'Niños'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GamesScreen(),
            AppsScreen(),
            MoviesScreen(),
            BooksScreen(),
            KidsScreen(),
          ],
        ),
      ),
    );
  }
}
