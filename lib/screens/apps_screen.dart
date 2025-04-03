import 'package:flutter/material.dart';
import '/widgets/app_card.dart';
import 'app_details_screen.dart';

class AppsScreen extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Recomendado para ti',
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
                                  appName: 'Facebook',
                                  description:
                                      'Conéctate con amigos y familiares en Facebook.',
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
                                  appName: 'Lens',
                                  description:
                                      'Microsoft Lens es una herramienta para escanear documentos y pizarras.',
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
                                  appName: 'LinkedIn',
                                  description:
                                      'Conéctate con profesionales y encuentra oportunidades laborales.',
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
                                  appName: 'TaxDown',
                                  description:
                                      'TaxDown te ayuda a gestionar tus impuestos de manera sencilla.',
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
                                  appName: 'Waze',
                                  description:
                                      'Waze es una aplicación de navegación GPS con información en tiempo real.',
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
                                  appName: 'WhatsApp',
                                  description:
                                      'WhatsApp es una aplicación de mensajería instantánea.',
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
                                  appName: 'YouTube',
                                  description:
                                      'Disfruta de videos, música y transmisiones en vivo en YouTube.',
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
                                  appName: 'Audible',
                                  description:
                                      'Audible es una aplicación para escuchar audiolibros y podcasts.',
                                  image:
                                      'assets/images/apps_content/AUDIBLE_LOGO.png',
                                  rating: 5.0,
                                  downloads: '500M+',
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
                                  appName: 'Amazon Photos',
                                  description:
                                      'Amazon Photos te permite almacenar y organizar tus fotos.',
                                  image:
                                      'assets/images/apps_content/AMAZONPHOTOS_LOGO.png',
                                  rating: 4.0,
                                  downloads: '100M+',
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
                            builder: (context) => AppDetailsScreen(
                              appName: 'Spotify',
                              description: 'Escucha música y podcasts en cualquier momento.',
                              image: 'images/apps_content/spotify.png',
                              rating: 4.7,
                              downloads: '1B+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Spotify',
                        rating: 4.7,
                        image: 'images/apps_content/spotify.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'TikTok',
                              description: 'Crea y descubre videos cortos y divertidos.',
                              image: 'images/apps_content/Tiktok.webp',
                              rating: 4.6,
                              downloads: '2B+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'TikTok',
                        rating: 4.6,
                        image: 'images/apps_content/Tiktok.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Google Drive',
                              description: 'Almacena y accede a tus archivos desde cualquier lugar.',
                              image: 'images/apps_content/Google_Drive.webp',
                              rating: 4.8,
                              downloads: '5B+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Google Drive',
                        rating: 4.8,
                        image: 'images/apps_content/Google_Drive.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Instagram',
                              description: 'Comparte fotos y videos con tus amigos.',
                              image: 'images/apps_content/Instagram.webp',
                              rating: 4.5,
                              downloads: '5B+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Instagram',
                        rating: 4.5,
                        image: 'images/apps_content/Instagram.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Snapchat',
                              description: 'Envía fotos y videos que desaparecen.',
                              image: 'images/apps_content/Snapchat.webp',
                              rating: 4.3,
                              downloads: '1B+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Snapchat',
                        rating: 4.3,
                        image: 'images/apps_content/Snapchat.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Zoom',
                              description: 'Realiza videollamadas y reuniones virtuales.',
                              image: 'images/apps_content/Zoom.webp',
                              rating: 4.6,
                              downloads: '500M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Zoom',
                        rating: 4.6,
                        image: 'images/apps_content/Zoom.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Canva',
                              description: 'Diseña gráficos, presentaciones y más.',
                              image: 'images/apps_content/Canva.webp',
                              rating: 4.8,
                              downloads: '100M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Canva',
                        rating: 4.8,
                        image: 'images/apps_content/Canva.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Pinterest',
                              description: 'Encuentra ideas e inspírate con imágenes.',
                              image: 'images/apps_content/Pinterest.webp',
                              rating: 4.6,
                              downloads: '1B+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Pinterest',
                        rating: 4.6,
                        image: 'images/apps_content/Pinterest.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Trello',
                              description: 'Organiza tus proyectos y tareas fácilmente.',
                              image: 'images/apps_content/Trello.webp',
                              rating: 4.7,
                              downloads: '50M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Trello',
                        rating: 4.7,
                        image: 'images/apps_content/Trello.webp',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppDetailsScreen(
                              appName: 'Duolingo',
                              description: 'Aprende idiomas de forma divertida y gratuita.',
                              image: 'images/apps_content/Duolingo.webp',
                              rating: 4.8,
                              downloads: '500M+',
                            ),
                          ),
                        );
                      },
                      child: AppCard(
                        appName: 'Duolingo',
                        rating: 4.8,
                        image: 'images/apps_content/Duolingo.webp',
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
