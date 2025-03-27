import 'package:flutter/material.dart';
import '/widgets/app_card.dart'; // Importa el widget AppCard si lo necesitas

class AppsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
              AppCard(
                appName: 'WhatsApp',
                rating: 4.8,
                image: 'assets/images/Whatsapplogo.webp',
              ),
              AppCard(
                appName: 'Waze',
                rating: 4.5,
                image: 'assets/images/Waze.png',
              ),
              AppCard(
                appName: 'Facebook',
                rating: 4.5,
                image: 'assets/images/facebooklogo.webp',
              ),
              AppCard(
                appName: 'Linkedln',
                rating: 4.5,
                image: 'assets/images/Linkedln.png',
              ),
              AppCard(
                appName: 'YouTube',
                rating: 4.5,
                image: 'assets/images/YT.webp',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
