import 'package:flutter/material.dart';
import '/widgets/app_card.dart';
import 'app_details_screen.dart';

class KidsScreen extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 32.0),
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
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Toca Boca Jr',
                                  description:
                                      'Un mundo de juegos creativos para niños pequeños.',
                                  image:
                                      'assets/images/kids_content/TOCABOCAJR.png',
                                  rating: 4.8,
                                  downloads: '50M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Toca Boca Jr',
                        rating: 4.8,
                        image: 'assets/images/kids_content/TOCABOCAJR.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'LEGO® DUPLO® World',
                                  description:
                                      'Juegos educativos para niños pequeños.',
                                  image:
                                      'assets/images/kids_content/LEGODUPLOWORLD.png',
                                  rating: 4.7,
                                  downloads: '10M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'LEGO® DUPLO® World',
                        rating: 4.7,
                        image: 'assets/images/kids_content/LEGODUPLOWORLD.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'LEGO® DUPLO® Peppa Pig',
                                  description:
                                      'Explora y construye con Peppa Pig y LEGO® DUPLO®.',
                                  image:
                                      'assets/images/kids_content/LEGODUPLOPEPPAPIG.png',
                                  rating: 4.6,
                                  downloads: '5M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'LEGO® DUPLO® Peppa Pig',
                        rating: 4.6,
                        image:
                            'assets/images/kids_content/LEGODUPLOPEPPAPIG.png',
                      ),
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
