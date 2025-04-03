import 'package:flutter/material.dart';
import '../widgets/app_card.dart';

class MoviesScreen extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
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
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                _scrollController.animateTo(
                  _scrollController.offset - 200,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
            Expanded(
              child: Container(
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  children: [
                    AppCard(
                      appName: 'Rango',
                      rating: 4.8,
                      image: 'assets/images/movies_content/RANGO.webp',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Windtalkers',
                      rating: 4.7,
                      image: 'assets/images/movies_content/WINDTALKERS.webp',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'John Wick',
                      rating: 4.7,
                      image: 'assets/images/movies_content/JOHNWICK.webp',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Avengers: Infinity War',
                      rating: 4.7,
                      image: 'assets/images/movies_content/infinitywar.webp',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Spider Man:\nInto the Spiderverse',
                      rating: 4.7,
                      image: 'assets/images/movies_content/ITSV.jpg',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Spider Man:\nAcross the Spiderverse',
                      rating: 4.7,
                      image: 'assets/images/movies_content/ATSV.jpg',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Captain America and\nThe Winter Soldier',
                      rating: 4.7,
                      image: 'assets/images/movies_content/CATWS.jpg',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Donnie Darko',
                      rating: 4.7,
                      image: 'assets/images/movies_content/donniedarko.jpg',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Eternal Sunshine of the Spotless Mind',
                      rating: 4.8,
                      image: 'assets/images/movies_content/eternalsunshine.jpg',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Pulp Fiction',
                      rating: 4.9,
                      image: 'assets/images/movies_content/Pulp_Fiction.jpg',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Requiem for a Dream',
                      rating: 4.6,
                      image: 'assets/images/movies_content/requiem.jpg',
                      height: 280,
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                _scrollController.animateTo(
                  _scrollController.offset + 200,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
