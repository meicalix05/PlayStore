import 'package:flutter/material.dart';
import '/widgets/app_card.dart';
import 'app_details_screen.dart';

class KidsScreen extends StatelessWidget {
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollController3 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    '¡Apps y juegos aprobados por maestros!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 16.0),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        '0-2 años',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        '3-5 años',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        '6-8 años',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        '9-12 años',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),

          // Primera sección: Juegos educativos
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Juegos educativos',
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
                                    appName: 'ABC Kids',
                                    description:
                                        'Aprende el abecedario jugando.',
                                    image:
                                        'assets/images/kids_content/Abc_Kids.webp',
                                    rating: 4.5,
                                    downloads: '10M+',
                                  ),
                            ),
                          );
                        },
                        child: AppCard(
                          appName: 'ABC Kids',
                          rating: 4.5,
                          image: 'assets/images/kids_content/Abc_Kids.webp',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AppDetailsScreen(
                                    appName: 'Endless Alphabet',
                                    description:
                                        'Aprende palabras con diversión.',
                                    image:
                                        'assets/images/kids_content/Endless_alphabet.webp',
                                    rating: 4.8,
                                    downloads: '5M+',
                                  ),
                            ),
                          );
                        },
                        child: AppCard(
                          appName: 'Endless Alphabet',
                          rating: 4.8,
                          image:
                              'assets/images/kids_content/Endless_alphabet.webp',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AppDetailsScreen(
                                    appName: 'PBS Kids Games',
                                    description:
                                        'Juegos educativos para niños.',
                                    image:
                                        'assets/images/kids_content/Pbs_kids_games.webp',
                                    rating: 4.6,
                                    downloads: '10M+',
                                  ),
                            ),
                          );
                        },
                        child: AppCard(
                          appName: 'PBS Kids Games',
                          rating: 4.6,
                          image:
                              'assets/images/kids_content/Pbs_kids_games.webp',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AppDetailsScreen(
                                    appName: 'Khan Academy Kids',
                                    description:
                                        'Aprende con actividades interactivas.',
                                    image:
                                        'assets/images/kids_content/Khan_academy_kids.webp',
                                    rating: 4.7,
                                    downloads: '10M+',
                                  ),
                            ),
                          );
                        },
                        child: AppCard(
                          appName: 'Khan Academy Kids',
                          rating: 4.7,
                          image:
                              'assets/images/kids_content/Khan_academy_kids.webp',
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

          // Segunda sección: Juegos creativos
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Juegos creativos',
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
                                    appName: 'Toca Boca Jr',
                                    description: 'Explora y crea historias.',
                                    image:
                                        'assets/images/kids_content/TOCABOCAJR.png',
                                    rating: 4.8,
                                    downloads: '10M+',
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
                                    description: 'Construye y juega con LEGO.',
                                    image:
                                        'assets/images/kids_content/LEGODUPLOWORLD.png',
                                    rating: 4.7,
                                    downloads: '5M+',
                                  ),
                            ),
                          );
                        },
                        child: AppCard(
                          appName: 'LEGO® DUPLO® World',
                          rating: 4.7,
                          image:
                              'assets/images/kids_content/LEGODUPLOWORLD.png',
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
                                    description: 'Juega con Peppa Pig y LEGO.',
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
                              builder:
                                  (context) => AppDetailsScreen(
                                    appName: 'Toca Life World',
                                    description: 'Crea tu propio mundo.',
                                    image:
                                        'assets/images/kids_content/Toca_Life_World.webp',
                                    rating: 4.8,
                                    downloads: '50M+',
                                  ),
                            ),
                          );
                        },
                        child: AppCard(
                          appName: 'Toca Life World',
                          rating: 4.8,
                          image:
                              'assets/images/kids_content/Toca_Life_World.webp',
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

          // Tercera sección: Juegos de entretenimiento
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Juegos de entretenimiento',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  _scrollController3.animateTo(
                    _scrollController3.offset - 200,
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
                                    appName: 'Pepi Wonder World',
                                    description: 'Explora mundos mágicos.',
                                    image:
                                        'assets/images/kids_content/Pepi_Wonder_World.webp',
                                    rating: 4.6,
                                    downloads: '10M+',
                                  ),
                            ),
                          );
                        },
                        child: AppCard(
                          appName: 'Pepi Wonder World',
                          rating: 4.6,
                          image:
                              'assets/images/kids_content/Pepi_Wonder_World.webp',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AppDetailsScreen(
                                    appName: 'Dr. Panda Town',
                                    description: 'Crea historias en la ciudad.',
                                    image:
                                        'assets/images/kids_content/Dr_Panda_Town.webp',
                                    rating: 4.5,
                                    downloads: '5M+',
                                  ),
                            ),
                          );
                        },
                        child: AppCard(
                          appName: 'Dr. Panda Town',
                          rating: 4.5,
                          image:
                              'assets/images/kids_content/Dr_Panda_Town.webp',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AppDetailsScreen(
                                    appName: 'Sago Mini World',
                                    description:
                                        'Juega y explora con Sago Mini.',
                                    image:
                                        'assets/images/kids_content/Sago_Mini_World.webp',
                                    rating: 4.7,
                                    downloads: '10M+',
                                  ),
                            ),
                          );
                        },
                        child: AppCard(
                          appName: 'Sago Mini World',
                          rating: 4.7,
                          image:
                              'assets/images/kids_content/Sago_Mini_World.webp',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AppDetailsScreen(
                                    appName: 'Baby Shark World',
                                    description:
                                        'Canta y juega con Baby Shark.',
                                    image:
                                        'assets/images/kids_content/Bay_Shark_World.webp',
                                    rating: 4.4,
                                    downloads: '5M+',
                                  ),
                            ),
                          );
                        },
                        child: AppCard(
                          appName: 'Baby Shark World',
                          rating: 4.4,
                          image:
                              'assets/images/kids_content/Bay_Shark_World.webp',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  _scrollController3.animateTo(
                    _scrollController3.offset + 200,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
