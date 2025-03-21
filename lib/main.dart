import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Play Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: PlayStoreScreen(),
    );
  }
}

class PlayStoreScreen extends StatelessWidget {
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
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Juega tus juegos favoritos',
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
                        rating: 4.8,
                        image: 'assets/images/CR_LOGO.png',
                      ),
                      AppCard(
                        appName: 'Wild Rift',
                        rating: 4.9,
                        image: 'assets/images/WILDRIFT_LOGO.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Recomendado para ti',
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
                        rating: 5.0,
                        image: 'assets/images/AUDIBLE_LOGO.png',
                      ),
                      AppCard(
                        appName: 'Amazon Photos',
                        rating: 4.0,
                        image: 'assets/images/AMAZONPHOTOS_LOGO.png',
                      ),
                      AppCard(
                        appName: 'Lens',
                        rating: 4.9,
                        image: 'assets/images/LENS_LOGO.png',
                      ),
                      AppCard(
                        appName: 'TaxDown',
                        rating: 4.9,
                        image: 'assets/images/TAXDOWN_LOGO.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '¡Renta o compra películas en YouTube o Google TV!',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Comprar películas en Google Play ya no está disponible.',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.lightBlue,
                        ),
                        child: Text('Buscar en YouTube'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Las más vendidas',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      AppCard(
                        appName: 'Rango',
                        rating: 4.8,
                        image: 'assets/images/RANGO.webp',
                      ),
                      AppCard(
                        appName: 'Windtalkers',
                        rating: 4.7,
                        image: 'assets/images/WINDTALKERS.webp',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(child: Text('Libros')),
            Center(child: Text('Niños')),
          ],
        ),
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
