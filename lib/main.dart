import 'package:flutter/material.dart';
import 'screens/apps_screen.dart';
import 'screens/games_screen.dart';
import 'screens/movies_screen.dart';
import 'screens/books_screen.dart';
import 'screens/kids_screen.dart';

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
      home: GooglePlayScreen(),
    );
  }
}

class GooglePlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
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
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
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
