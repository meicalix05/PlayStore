import 'package:flutter/material.dart';
import '/widgets/app_card.dart';
import 'app_details_screen.dart';

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
          height: 170,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
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
                  image: 'assets/images/apps_content/AMAZONPHOTOS_LOGO.png',
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
                            image: 'assets/images/apps_content/LENS_LOGO.png',
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
                            appName: 'WhatsApp',
                            description:
                                'WhatsApp es una aplicación de mensajería instantánea.',
                            image:
                                'assets/images/apps_content/Whatsapplogo.webp',
                            rating: 4.9,
                            downloads: '5B+',
                          ),
                    ),
                  );
                },
                child: AppCard(
                  appName: 'WhatsApp',
                  rating: 4.9,
                  image: 'assets/images/apps_content/Whatsapplogo.webp',
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
                            image: 'assets/images/apps_content/Waze.png',
                            rating: 4.9,
                            downloads: '100M+',
                          ),
                    ),
                  );
                },
                child: AppCard(
                  appName: 'Waze',
                  rating: 4.9,
                  image: 'assets/images/apps_content/Waze.png',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
