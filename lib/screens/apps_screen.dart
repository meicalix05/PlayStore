import 'package:flutter/material.dart';
import '/widgets/app_card.dart';
import 'app_details_screen.dart';

class AppsScreen extends StatelessWidget {
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollController3 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Tarjeta de anuncio
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/apps_content/REDDITBG.webp'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '¡Descubre el nuevo Reddit!',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Feliz día de los inocentes con Reddit r/Field',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/apps_content/REDDITLOGO.png',
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Reddit',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => AppDetailsScreen(
                                        appName: 'Reddit',
                                        description:
                                            'Descubre comunidades y temas de interés en Reddit.',
                                        image:
                                            'assets/images/apps_content/REDDITBG.webp',
                                        rating: 4.8,
                                        downloads: '1M+',
                                      ),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                              foregroundColor: Colors.white,
                            ),
                            child: Text('Descargar ahora'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        // Sección 1: Redes Sociales
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Redes sociales',
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
                                  appName: 'Facebook',
                                  description:
                                      'Conéctate con amigos y familiares.',
                                  image:
                                      'assets/images/apps_content/FACEBOOK_LOGO.webp',
                                  rating: 4.5,
                                  downloads: '5B+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Facebook',
                        rating: 4.5,
                        image: 'assets/images/apps_content/FACEBOOK_LOGO.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Instagram',
                                  description:
                                      'Comparte fotos y videos con el mundo.',
                                  image:
                                      'assets/images/apps_content/Instagram.webp',
                                  rating: 4.5,
                                  downloads: '1B+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Instagram',
                        rating: 4.5,
                        image: 'assets/images/apps_content/Instagram.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'TikTok',
                                  description: 'Crea y descubre videos cortos.',
                                  image:
                                      'assets/images/apps_content/Tiktok.webp',
                                  rating: 4.6,
                                  downloads: '2B+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'TikTok',
                        rating: 4.6,
                        image: 'assets/images/apps_content/Tiktok.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'X',
                                  description:
                                      'Conéctate y comparte en tiempo real.',
                                  image:
                                      'assets/images/apps_content/X_LOGO.webp',
                                  rating: 4.4,
                                  downloads: '1B+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'X',
                        rating: 4.4,
                        image: 'assets/images/apps_content/X_LOGO.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'WhatsApp',
                                  description:
                                      'Mensajes y llamadas rápidas y seguras.',
                                  image:
                                      'assets/images/apps_content/WHATSAPP_LOGO.webp',
                                  rating: 4.9,
                                  downloads: '5B+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'WhatsApp',
                        rating: 4.9,
                        image: 'assets/images/apps_content/WHATSAPP_LOGO.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'LinkedIn',
                                  description: 'Conéctate con profesionales.',
                                  image:
                                      'assets/images/apps_content/LINKEDIN_LOGO.png',
                                  rating: 4.6,
                                  downloads: '1B+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'LinkedIn',
                        rating: 4.6,
                        image: 'assets/images/apps_content/LINKEDIN_LOGO.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Snapchat',
                                  description:
                                      'Envía fotos y videos que desaparecen.',
                                  image:
                                      'assets/images/apps_content/Snapchat.webp',
                                  rating: 4.3,
                                  downloads: '1B+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Snapchat',
                        rating: 4.3,
                        image: 'assets/images/apps_content/Snapchat.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Pinterest',
                                  description: 'Encuentra ideas e inspiración.',
                                  image:
                                      'assets/images/apps_content/Pinterest.webp',
                                  rating: 4.6,
                                  downloads: '500M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Pinterest',
                        rating: 4.6,
                        image: 'assets/images/apps_content/Pinterest.webp',
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

        // Sección 2: Productividad
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Productividad',
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
                                  appName: 'Google Drive',
                                  description:
                                      'Almacena y comparte tus archivos.',
                                  image:
                                      'assets/images/apps_content/Google_Drive.webp',
                                  rating: 4.8,
                                  downloads: '5B+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Google Drive',
                        rating: 4.8,
                        image: 'assets/images/apps_content/Google_Drive.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Audible',
                                  description:
                                      'Escucha audiolibros y podcasts.',
                                  image:
                                      'assets/images/apps_content/AUDIBLE_LOGO.png',
                                  rating: 5.0,
                                  downloads: '100M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Audible',
                        rating: 5.0,
                        image: 'assets/images/apps_content/AUDIBLE_LOGO.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Canva',
                                  description:
                                      'Diseña gráficos y presentaciones.',
                                  image:
                                      'assets/images/apps_content/Canva.webp',
                                  rating: 4.8,
                                  downloads: '100M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Canva',
                        rating: 4.8,
                        image: 'assets/images/apps_content/Canva.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Lens',
                                  description: 'Escanea y organiza documentos.',
                                  image:
                                      'assets/images/apps_content/LENS_LOGO.png',
                                  rating: 4.9,
                                  downloads: '50M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Lens',
                        rating: 4.9,
                        image: 'assets/images/apps_content/LENS_LOGO.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'TaxDown',
                                  description:
                                      'Optimiza tus impuestos fácilmente.',
                                  image:
                                      'assets/images/apps_content/TAXDOWN_LOGO.png',
                                  rating: 4.9,
                                  downloads: '10M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'TaxDown',
                        rating: 4.9,
                        image: 'assets/images/apps_content/TAXDOWN_LOGO.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Trello',
                                  description:
                                      'Organiza tus proyectos y tareas.',
                                  image:
                                      'assets/images/apps_content/Trello.webp',
                                  rating: 4.7,
                                  downloads: '50M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Trello',
                        rating: 4.7,
                        image: 'assets/images/apps_content/Trello.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Waze',
                                  description: 'Navegación en tiempo real.',
                                  image:
                                      'assets/images/apps_content/WAZE_LOGO.png',
                                  rating: 4.8,
                                  downloads: '100M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Waze',
                        rating: 4.8,
                        image: 'assets/images/apps_content/WAZE_LOGO.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Amazon Photos',
                                  description: 'Almacena y organiza tus fotos.',
                                  image:
                                      'assets/images/apps_content/AMAZONPHOTOS_LOGO.png',
                                  rating: 4.0,
                                  downloads: '50M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Amazon Photos',
                        rating: 4.0,
                        image:
                            'assets/images/apps_content/AMAZONPHOTOS_LOGO.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Duolingo',
                                  description:
                                      'Aprende idiomas de forma divertida.',
                                  image:
                                      'assets/images/apps_content/Duolingo.webp',
                                  rating: 4.8,
                                  downloads: '500M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Duolingo',
                        rating: 4.8,
                        image: 'assets/images/apps_content/Duolingo.webp',
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

        // Sección 3: Entretenimiento
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Entretenimiento',
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
                                  appName: 'Spotify',
                                  description: 'Escucha música y podcasts.',
                                  image:
                                      'assets/images/apps_content/spotify.png',
                                  rating: 4.7,
                                  downloads: '1B+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Spotify',
                        rating: 4.7,
                        image: 'assets/images/apps_content/spotify.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'YouTube',
                                  description: 'Mira y comparte videos.',
                                  image:
                                      'assets/images/apps_content/YOUTUBE_LOGO.webp',
                                  rating: 4.8,
                                  downloads: '10B+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'YouTube',
                        rating: 4.8,
                        image: 'assets/images/apps_content/YOUTUBE_LOGO.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Disney+',
                                  description:
                                      'Disfruta de películas y series.',
                                  image:
                                      'assets/images/apps_content/DISNEY_LOGO.png',
                                  rating: 4.8,
                                  downloads: '500M+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Disney+',
                        rating: 4.8,
                        image: 'assets/images/apps_content/DISNEY_LOGO.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AppDetailsScreen(
                                  appName: 'Netflix',
                                  description:
                                      'Series y películas en streaming.',
                                  image:
                                      'assets/images/apps_content/NETFLIX_LOGO.png',
                                  rating: 4.9,
                                  downloads: '1B+',
                                ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Netflix',
                        rating: 4.9,
                        image: 'assets/images/apps_content/NETFLIX_LOGO.png',
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
    );
  }
}
