import 'package:flutter/material.dart';
import '../widgets/app_card.dart';

class BooksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Libros recomendados para ti',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              AppCard(
                appName: 'La Cancion de Aquiles',
                rating: 4.8,
                image:
                    'assets/images/ae574733-eaf6-40a9-86c2-96b1dafde524_Original.png',
              ),
              AppCard(
                appName: 'Sapiens',
                rating: 4.9,
                image: 'assets/images/sapiens_book_cover.png',
              ),
              AppCard(
                appName: 'Educated Book',
                rating: 4.7,
                image: 'assets/images/educated_book_cover.png',
              ),
              AppCard(
                appName: 'El Titanic',
                rating: 4.9,
                image: 'assets/images/ElTitanic.webp',
              ),
              AppCard(
                appName: 'Harry Potter y la Piedra Filosofal',
                rating: 5.0,
                image: 'assets/images/HarryPotterPiedraF.webp',
              ),
              AppCard(
                appName: 'Harry Potter y la Camara Secreta',
                rating: 5.0,
                image: 'assets/images/HarryPotterCamaraS.webp',
              ),
              AppCard(
                appName: 'Harry Potter y el Prisionero de Azkaban',
                rating: 5.0,
                image: 'assets/images/HarryPotteryelprisionerodeAzkaban.webp',
              ),
              AppCard(
                appName: 'Harry Potter y el Caliz de Fuego',
                rating: 5.0,
                image: 'assets/images/HarryPotteryelCalizdeF.webp',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
