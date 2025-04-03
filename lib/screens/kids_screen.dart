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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'ABC Kids',
                              description: 'Aprende el alfabeto con juegos educativos.',
                              image: 'images/kids_content/Abc_Kids.webp',
                              rating: 4.5,
                              downloads: '10M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'ABC Kids',
                        rating: 4.5,
                        image: 'images/kids_content/Abc_Kids.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Endless Alphabet',
                              description: 'Divertidos rompecabezas para aprender palabras.',
                              image: 'images/kids_content/Endless_alphabet.webp',
                              rating: 4.8,
                              downloads: '5M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Endless Alphabet',
                        rating: 4.8,
                        image: 'images/kids_content/Endless_alphabet.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'PBS Kids Games',
                              description: 'Juegos educativos con personajes de PBS Kids.',
                              image: 'images/kids_content/Pbs_kids_games.webp',
                              rating: 4.6,
                              downloads: '10M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'PBS Kids Games',
                        rating: 4.6,
                        image: 'images/kids_content/Pbs_kids_games.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Khan Academy Kids',
                              description: 'Aprendizaje divertido para niños pequeños.',
                              image: 'images/kids_content/Khan_academy_kids.webp',
                              rating: 4.7,
                              downloads: '1M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Khan Academy Kids',
                        rating: 4.7,
                        image: 'images/kids_content/Khan_academy_kids.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Toca Life World',
                              description: 'Crea historias y explora mundos en Toca Life.',
                              image: 'images/kids_content/Toca_Life_World.webp',
                              rating: 4.8,
                              downloads: '50M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Toca Life World',
                        rating: 4.8,
                        image: 'images/kids_content/Toca_Life_World.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Pepi Wonder World',
                              description: 'Explora y crea historias mágicas en Pepi Wonder World.',
                              image: 'images/kids_content/Pepi_Wonder_World.webp',
                              rating: 4.6,
                              downloads: '10M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Pepi Wonder World',
                        rating: 4.6,
                        image: 'images/kids_content/Pepi_Wonder_World.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Dr. Panda Town',
                              description: 'Explora y juega en la ciudad de Dr. Panda.',
                              image: 'images/kids_content/Dr_Panda_Town.webp',
                              rating: 4.5,
                              downloads: '10M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Dr. Panda Town',
                        rating: 4.5,
                        image: 'images/kids_content/Dr_Panda_Town.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Sago Mini World',
                              description: 'Juegos creativos y educativos para niños pequeños.',
                              image: 'images/kids_content/Sago_Mini_World.webp',
                              rating: 4.7,
                              downloads: '5M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Sago Mini World',
                        rating: 4.7,
                        image: 'images/kids_content/Sago_Mini_World.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Baby Shark World',
                              description: 'Canta y juega con Baby Shark y su familia.',
                              image: 'images/kids_content/Bay_Shark_World.webp',
                              rating: 4.4,
                              downloads: '10M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Baby Shark World',
                        rating: 4.4,
                        image: 'images/kids_content/Bay_Shark_World.webp',
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
