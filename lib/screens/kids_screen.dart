import 'package:flutter/material.dart';
import 'package:google_play_emulator/widgets/app_card.dart';

class KidsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/kids_content/KIDS_HEADER.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '¡Apps y juegos aprobados por maestros!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text('0-2 años'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text('3-5 años'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text('6-8 años'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text('9-12 años'),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Nuevas y actualizadas',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 8.0),
        Container(
          height: 170,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              AppCard(
                appName: 'Toca Boca Jr',
                rating: 3.5,
                image: 'assets/images/kids_content/TOCABOCAJR.png',
              ),
              AppCard(
                appName: 'LEGO® DUPLO® World',
                rating: 4.1,
                image: 'assets/images/kids_content/LEGODUPLOWORLD.png',
              ),
              AppCard(
                appName: 'LEGO® DUPLO® Peppa Pig',
                rating: 3.7,
                image: 'assets/images/kids_content/LEGODUPLOPEPPAPIG.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
