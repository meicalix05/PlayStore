import 'dart:io';
import 'package:flutter/material.dart';
import '/widgets/app_card.dart';
import 'app_details_screen.dart';

class GamesScreen extends StatelessWidget {
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollController3 = ScrollController();
  final ScrollController _scrollController4 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (Platform.isAndroid)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildGameCard(
                        context,
                        'Minecraft',
                        'Explora mundos infinitos y construye todo lo que imagines.',
                        'assets/images/games_content/MINECRAFT_CARDBG.webp',
                        'assets/images/games_content/minecraft.webp',
                        4.8,
                        '10M+',
                        'Descargar',
                      ),
                      _buildGameCard(
                        context,
                        '8 Ball Pool',
                        'El juego de billar más popular del mundo. ¡Compite en línea!',
                        'assets/images/games_content/8BALLPOOL_CARDBG.webp',
                        'assets/images/games_content/8BALLPOOL.png',
                        4.7,
                        '500M+',
                        'Descargar',
                      ),
                      _buildGameCard(
                        context,
                        'Odin: Valhalla Rising',
                        'Embárcate en una aventura épica en la mitología nórdica.',
                        'assets/images/games_content/ODIN_CARDBG.webp',
                        'assets/images/games_content/ODINVALHALLARISING.webp',
                        4.6,
                        '1M+',
                        'Preregistrar',
                      ),
                    ],
                  ),
                )
              else ...[
                Expanded(
                  child: _buildGameCard(
                    context,
                    'Minecraft',
                    'Explora mundos infinitos y construye todo lo que imagines.',
                    'assets/images/games_content/MINECRAFT_CARDBG.webp',
                    'assets/images/games_content/minecraft.webp',
                    4.8,
                    '10M+',
                    'Descargar',
                  ),
                ),
                Expanded(
                  child: _buildGameCard(
                    context,
                    '8 Ball Pool',
                    'El juego de billar más popular del mundo. ¡Compite en línea!',
                    'assets/images/games_content/8BALLPOOL_CARDBG.webp',
                    'assets/images/games_content/8BALLPOOL.png',
                    4.7,
                    '500M+',
                    'Descargar',
                  ),
                ),
                Expanded(
                  child: _buildGameCard(
                    context,
                    'Odin: Valhalla Rising',
                    'Embárcate en una aventura épica en la mitología nórdica.',
                    'assets/images/games_content/ODIN_CARDBG.webp',
                    'assets/images/games_content/ODINVALHALLARISING.webp',
                    4.6,
                    '1M+',
                    'Preregistrar',
                  ),
                ),
              ],
            ],
          ),
        ),
        // Primera sección: Juegos recomendados para ti
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Juegos recomendados para ti',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            if (!Platform.isAndroid)
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
                                  description: 'Construye tu aldea y compite.',
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
                                  description: 'Batallas en tiempo real.',
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
                                  description: 'MOBA en tu móvil.',
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
                                  description: 'Juego de cartas estratégico.',
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
                                  appName: 'Call of Duty: Mobile',
                                  description: 'Acción y disparos en tu móvil.',
                                  image:
                                      'assets/images/games_content/cod_mobile.webp',
                                  rating: 4.7,
                                  downloads: '100M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Call of Duty: Mobile',
                        rating: 4.7,
                        image: 'assets/images/games_content/cod_mobile.webp',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (!Platform.isAndroid)
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

        // Segunda sección: Juegos casuales
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Juegos casuales',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            if (!Platform.isAndroid) // Mostrar botón solo si no es Android
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
                                  description: 'Carreras llenas de diversión.',
                                  image:
                                      'assets/images/games_content/MARIOKARTTOUR_LOGO.png',
                                  rating: 4.7,
                                  downloads: '50M+',
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
                                      'Lanza pájaros y destruye estructuras.',
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
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Subway Surfers',
                                  description: 'Corre y esquiva trenes.',
                                  image:
                                      'assets/images/games_content/Subway_Surfers.WEBP',
                                  rating: 4.6,
                                  downloads: '1B+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Subway Surfers',
                        rating: 4.6,
                        image:
                            'assets/images/games_content/Subway_Surfers.WEBP',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Temple Run 2',
                                  description:
                                      'Corre y escapa de los obstáculos.',
                                  image:
                                      'assets/images/games_content/Temple_Run2.png',
                                  rating: 4.5,
                                  downloads: '500M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Temple Run 2',
                        rating: 4.5,
                        image: 'assets/images/games_content/Temple_Run2.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Fruit Ninja',
                                  description: 'Corta frutas y evita bombas.',
                                  image:
                                      'assets/images/games_content/Fruit_ninja.png',
                                  rating: 4.4,
                                  downloads: '500M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Fruit Ninja',
                        rating: 4.4,
                        image: 'assets/images/games_content/Fruit_ninja.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Hill Climb Racing',
                                  description: 'Conduce y supera colinas.',
                                  image:
                                      'assets/images/games_content/Hill_climb_racing.png',
                                  rating: 4.3,
                                  downloads: '500M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Hill Climb Racing',
                        rating: 4.3,
                        image:
                            'assets/images/games_content/Hill_climb_racing.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (!Platform.isAndroid) // Mostrar botón solo si no es Android
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
          ],
        ),

        // Tercera sección: Juegos de acción
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Juegos de acción',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            if (!Platform.isAndroid) // Mostrar botón solo si no es Android
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
                  controller: _scrollController3,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Genshin Impact',
                                  description:
                                      'Explora un mundo abierto lleno de aventuras.',
                                  image:
                                      'assets/images/games_content/Genshin_Impact.webp',
                                  rating: 4.6,
                                  downloads: '50M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Genshin Impact',
                        rating: 4.6,
                        image:
                            'assets/images/games_content/Genshin_Impact.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'PUBG Mobile',
                                  description:
                                      'Batallas épicas en un campo de batalla.',
                                  image: 'assets/images/games_content/pubg.jpg',
                                  rating: 4.5,
                                  downloads: '500M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'PUBG Mobile',
                        rating: 4.5,
                        image: 'assets/images/games_content/pubg.jpg',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Apex Legends Mobile',
                                  description: 'Juego de disparos en equipo.',
                                  image:
                                      'assets/images/games_content/Apex_mobile.webp',
                                  rating: 4.3,
                                  downloads: '10M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Apex Legends Mobile',
                        rating: 4.3,
                        image: 'assets/images/games_content/Apex_mobile.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Fortnite',
                                  description:
                                      'Construye y lucha para ser el último en pie.',
                                  image:
                                      'assets/images/games_content/Fortnite_mobile.webp',
                                  rating: 4.6,
                                  downloads: '100M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Fortnite',
                        rating: 4.6,
                        image:
                            'assets/images/games_content/Fortnite_mobile.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Brawl Stars',
                                  description:
                                      'Batallas rápidas y emocionantes.',
                                  image:
                                      'assets/images/games_content/Brawl_Stars.jpeg',
                                  rating: 4.7,
                                  downloads: '100M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Brawl Stars',
                        rating: 4.7,
                        image: 'assets/images/games_content/Brawl_Stars.jpeg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (!Platform.isAndroid) // Mostrar botón solo si no es Android
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
          ],
        ),

        // Cuarta sección: Juegos de estrategia
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Juegos de estrategia',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            if (!Platform.isAndroid) // Mostrar botón solo si no es Android
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
                  controller: _scrollController4,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Plants vs Zombies',
                                  description:
                                      'Defiende tu jardín de los zombis.',
                                  image:
                                      'assets/images/games_content/PlantsvsZombies.webp',
                                  rating: 4.7,
                                  downloads: '100M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Plants vs Zombies',
                        rating: 4.7,
                        image:
                            'assets/images/games_content/PlantsvsZombies.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Minecraft',
                                  description:
                                      'Explora y construye en un mundo infinito.',
                                  image:
                                      'assets/images/games_content/minecraft.webp',
                                  rating: 4.8,
                                  downloads: '10M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Minecraft',
                        rating: 4.8,
                        image: 'assets/images/games_content/minecraft.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Stumble Guys',
                                  description: 'Compite en carreras caóticas.',
                                  image:
                                      'assets/images/games_content/stumble_guys.png',
                                  rating: 4.6,
                                  downloads: '50M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Stumble Guys',
                        rating: 4.6,
                        image: 'assets/images/games_content/stumble_guys.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'FarmVille 3',
                                  description:
                                      'Construye y gestiona tu granja.',
                                  image:
                                      'assets/images/games_content/Farmville3.webp',
                                  rating: 4.4,
                                  downloads: '10M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'FarmVille 3',
                        rating: 4.4,
                        image: 'assets/images/games_content/Farmville3.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Homescapes',
                                  description:
                                      'Resuelve puzzles para renovar tu hogar.',
                                  image:
                                      'assets/images/games_content/Homescapes.webp',
                                  rating: 4.6,
                                  downloads: '100M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Homescapes',
                        rating: 4.6,
                        image: 'assets/images/games_content/Homescapes.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Cooking Fever',
                                  description:
                                      'Gestiona restaurantes y cocina platos.',
                                  image:
                                      'assets/images/games_content/coocking_ferver.webp',
                                  rating: 4.5,
                                  downloads: '100M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Cooking Fever',
                        rating: 4.5,
                        image:
                            'assets/images/games_content/coocking_ferver.webp',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (!Platform.isAndroid) // Mostrar botón solo si no es Android
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
          ],
        ),
      ],
    );
  }
}

Widget _buildGameCard(
  BuildContext context,
  String appName,
  String description,
  String backgroundImage,
  String logoImage,
  double rating,
  String downloads,
  String buttonText,
) {
  return Container(
    height: 250,
    width: 350,
    margin: EdgeInsets.symmetric(horizontal: 4.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
      image: DecorationImage(
        image: AssetImage(backgroundImage),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [Colors.black.withOpacity(0.9), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(logoImage, width: 40, height: 40),
                      SizedBox(width: 8.0),
                      Text(
                        appName,
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => AppDetailsScreen(
                                appName: appName,
                                description: description,
                                image: backgroundImage,
                                rating: rating,
                                downloads: downloads,
                              ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(buttonText),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
