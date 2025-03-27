import 'package:flutter/material.dart';
import '../widgets/app_card.dart';

class GamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Juega tus juegos favoritos',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 170,
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
              AppCard(
                appName: 'Legends of Runeterra',
                rating: 4.9,
                image: 'assets/images/LOR_LOGO.png',
              ),
              AppCard(
                appName: 'Mario Kart Tour',
                rating: 4.9,
                image: 'assets/images/MARIOKARTTOUR_LOGO.png',
              ),
              AppCard(
                appName: 'Angry Birds 2',
                rating: 4.9,
                image: 'assets/images/ANGRYBIRDS2_LOGO.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
