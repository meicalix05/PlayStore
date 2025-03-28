import 'package:flutter/material.dart';
import '../widgets/app_card.dart';

class MoviesScreen extends StatelessWidget {
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
              AppCard(
                appName: 'John Wick',
                rating: 4.7,
                image: 'assets/images/JOHNWICK.webp',
              ),
              AppCard(
                appName: 'Avengers: Infinity War',
                rating: 4.7,
                image: 'assets/images/infinitywar.webp',
              ),
              AppCard(
                appName: 'Spider Man:\nInto the Spiderverse',
                rating: 4.7,
                image: 'assets/images/ITSV.jpg',
              ),
              AppCard(
                appName: 'Spider Man:\nAcross the Spiderverse',
                rating: 4.7,
                image: 'assets/images/ATSV.jpg',
              ),
              AppCard(
                appName: 'Captain America and\nThe Winter Soldier',
                rating: 4.7,
                image: 'assets/images/CATWS.jpg',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
