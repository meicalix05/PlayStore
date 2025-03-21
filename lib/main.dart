import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emular Play Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PlayStoreScreen(),
    );
  }
}

class PlayStoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play Store'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Según tu actividad reciente',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                AppCard(
                  appName: 'Clash of Clans',
                  rating: 5.0,
                  image: 'assets/images/COC_LOGO.png',
                ),
                AppCard(
                  appName: 'Clash Royale',
                  rating: 4.0,
                  image: 'assets/images/CR_LOGO.png',
                ),
                AppCard(
                  appName: 'Microsoft Lens',
                  rating: 4.9,
                  image: 'assets/images/LENS_LOGO.png',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Anuncios: Sugerencias personalizadas',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                AppCard(
                  appName: 'Audible',
                  rating: 4.4,
                  image: 'assets/images/AUDIBLE_LOGO.png',
                ),
                AppCard(
                  appName: 'TaxDown',
                  rating: 3.8,
                  image: 'assets/images/TAXDOWN_LOGO.png',
                ),
                AppCard(
                  appName: 'Amazon Photos',
                  rating: 4.7,
                  image: 'assets/images/AMAZONPHOTOS_LOGO.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppCard extends StatelessWidget {
  final String appName;
  final double rating;
  final String image;

  AppCard({required this.appName, required this.rating, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(image, width: 80, height: 80),
          Text(appName, style: TextStyle(fontWeight: FontWeight.bold)),
          Text('$rating ★'),
        ],
      ),
    );
  }
}
