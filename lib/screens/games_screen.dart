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
    );
  }
}
