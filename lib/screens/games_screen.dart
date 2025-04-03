import 'package:flutter/material.dart';
import '/widgets/app_card.dart';
import 'app_details_screen.dart';

class GamesScreen extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Juegos recomendados para ti',
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
                                  appName: 'Clash of Clans',
                                  description: 'Un juego de estrategia épico.',
                                  image:
                                      'assets/images/games_content/COC_LOGO.png',
                                  rating: 5.0,
                                  downloads: '500M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Clash of Clans',
                        rating: 5.0,
                        image: 'assets/images/games_content/COC_LOGO.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Clash Royale',
                                  description:
                                      'Un juego de cartas y estrategia en tiempo real.',
                                  image:
                                      'assets/images/games_content/CR_LOGO.png',
                                  rating: 4.8,
                                  downloads: '100M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Clash Royale',
                        rating: 4.8,
                        image: 'assets/images/games_content/CR_LOGO.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Wild Rift',
                                  description:
                                      'League of Legends: Wild Rift es un MOBA para móviles.',
                                  image:
                                      'assets/images/games_content/WILDRIFT_LOGO.png',
                                  rating: 4.9,
                                  downloads: '50M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Wild Rift',
                        rating: 4.9,
                        image: 'assets/images/games_content/WILDRIFT_LOGO.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Legends of Runeterra',
                                  description:
                                      'Un juego de cartas estratégico basado en el universo de LoL.',
                                  image:
                                      'assets/images/games_content/LOR_LOGO.png',
                                  rating: 4.9,
                                  downloads: '10M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Legends of Runeterra',
                        rating: 4.9,
                        image: 'assets/images/games_content/LOR_LOGO.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Mario Kart Tour',
                                  description:
                                      'Corre con Mario y sus amigos en pistas emocionantes.',
                                  image:
                                      'assets/images/games_content/MARIOKARTTOUR_LOGO.png',
                                  rating: 4.7,
                                  downloads: '100M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Mario Kart Tour',
                        rating: 4.7,
                        image:
                            'assets/images/games_content/MARIOKARTTOUR_LOGO.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Angry Birds 2',
                                  description:
                                      'Dispara pájaros en estructuras para derribar a los cerdos.',
                                  image:
                                      'assets/images/games_content/ANGRYBIRDS2_LOGO.png',
                                  rating: 4.7,
                                  downloads: '100M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Angry Birds 2',
                        rating: 4.7,
                        image:
                            'assets/images/games_content/ANGRYBIRDS2_LOGO.png',
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
