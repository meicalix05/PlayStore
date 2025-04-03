import 'package:flutter/material.dart';
import '/widgets/app_card.dart';
import 'app_details_screen.dart';

class GamesScreen extends StatelessWidget {
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Primera sección
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
                _scrollController1.animateTo(
                  _scrollController1.offset - 200,
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
                  controller: _scrollController1,
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
                            builder: (context) => AppDetailsScreen(
                              appName: 'Call of Duty: Mobile',
                              description: 'Un emocionante juego de disparos en primera persona.',
                              image: 'images/games_content/cod_mobile.webp',
                              rating: 4.7,
                              downloads: '100M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Call of Duty: Mobile',
                        rating: 4.7,
                        image: 'images/games_content/cod_mobile.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Genshin Impact',
                              description: 'Un RPG de mundo abierto con gráficos impresionantes.',
                              image: 'images/games_content/Genshin_Impact.webp',
                              rating: 4.6,
                              downloads: '50M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Genshin Impact',
                        rating: 4.6,
                        image: 'images/games_content/Genshin_Impact.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'PUBG Mobile',
                              description: 'Un juego de batalla real lleno de acción.',
                              image: 'images/games_content/pubg.jpg',
                              rating: 4.5,
                              downloads: '500M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'PUBG Mobile',
                        rating: 4.5,
                        image: 'images/games_content/pubg.jpg',
                      ),
                    ),
                     GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Apex Legends Mobile',
                              description: 'Un juego de disparos y estrategia en equipo.',
                              image: 'images/games_content/Apex_mobile.webp',
                              rating: 4.3,
                              downloads: '10M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Apex Legends Mobile',
                        rating: 4.3,
                        image: 'images/games_content/Apex_mobile.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Fortnite',
                              description: 'Un juego de batalla real lleno de acción y construcción.',
                              image: 'images/games_content/Fortnite_mobile.webp',
                              rating: 4.6,
                              downloads: '100M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Fortnite',  
                        rating: 4.6,
                        image: 'images/games_content/Fortnite_mobile.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Brawl Stars',
                              description: 'Un juego de batallas multijugador rápidas y emocionantes.',
                              image: 'images/games_content/Brawl_Stars.jpeg',
                              rating: 4.7,
                              downloads: '100M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Brawl Stars',
                        rating: 4.7,
                        image: 'images/games_content/Brawl_Stars.jpeg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                _scrollController1.animateTo(
                  _scrollController1.offset + 200,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ],
        ),

        // Segunda sección
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Juegos casuales',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                _scrollController2.animateTo(
                  _scrollController2.offset - 200,
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
                  controller: _scrollController2,
                  children: [
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
                     GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Subway Surfers',
                              description: 'Corre y esquiva trenes en este emocionante juego.',
                              image: 'images/games_content/Subway_Surfers.WEBP',
                              rating: 4.6,
                              downloads: '1B+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Subway Surfers',
                        rating: 4.6,
                        image: 'images/games_content/Subway_Surfers.WEBP',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Temple Run 2',
                              description: 'Corre por tu vida en este juego de aventuras.',
                              image: 'images/games_content/Temple_Run2.png',
                              rating: 4.5,
                              downloads: '500M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Temple Run 2',
                        rating: 4.5,
                        image: 'images/games_content/Temple_Run2.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Fruit Ninja',
                              description: 'Corta frutas y evita bombas en este juego clásico.',
                              image: 'images/games_content/Fruit_ninja.png',
                              rating: 4.4,
                              downloads: '100M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Fruit Ninja',
                        rating: 4.4,
                        image: 'images/games_content/Fruit_ninja.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Hill Climb Racing',
                              description: 'Conduce por colinas y supera obstáculos.',
                              image: 'images/games_content/Hill_climb_racing.png',
                              rating: 4.3,
                              downloads: '500M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Hill Climb Racing',
                        rating: 4.3,
                        image: 'images/games_content/Hill_climb_racing.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Plants vs Zombies',
                              description: 'Defiende tu jardín de los zombis con plantas.',
                              image: 'images/games_content/PlantsvsZombies.webp',
                              rating: 4.7,
                              downloads: '100M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Plants vs Zombies',
                        rating: 4.7,
                        image: 'images/games_content/PlantsvsZombies.webp',
                      ),
                    ),
                       GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Minecraft',
                              description: 'Explora mundos infinitos y construye lo que imagines.',
                              image: 'images/games_content/minecraft.webp',
                              rating: 4.8,
                              downloads: '10M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Minecraft',
                        rating: 4.8,
                        image: 'images/games_content/minecraft.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Stumble Guys',
                              description: 'Un divertido juego multijugador de carreras y obstáculos.',
                              image: 'images/games_content/stumble_guys.png',
                              rating: 4.6,
                              downloads: '100M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Stumble Guys',
                        rating: 4.6,
                        image: 'images/games_content/stumble_guys.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                _scrollController2.animateTo(
                  _scrollController2.offset + 200,
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
