import 'dart:io';
import 'package:flutter/material.dart';
import '../widgets/app_card.dart';

class MoviesScreen extends StatelessWidget {
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollController3 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child:
              Platform.isAndroid
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '¡Renta o compra películas en YouTube o Google TV!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Comprar películas en Google Play ya no está disponible.',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        height: 16.0,
                      ), // Espaciado entre el texto y el botón
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blueGrey,
                        ),
                        child: Text('Buscar en YouTube'),
                      ),
                    ],
                  )
                  : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '¡Renta o compra películas en YouTube o Google TV!',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Comprar películas en Google Play ya no está disponible.',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blueGrey,
                        ),
                        child: Text('Buscar en YouTube'),
                      ),
                    ],
                  ),
        ),

        // Primera sección: Las más vendidas
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Las más vendidas',
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
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController1,
                  children: [
                    AppCard(
                      appName: 'Rango',
                      rating: 4.8,
                      image: 'assets/images/movies_content/RANGO.webp',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Windtalkers',
                      rating: 4.7,
                      image: 'assets/images/movies_content/WINDTALKERS.webp',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'John Wick',
                      rating: 4.7,
                      image: 'assets/images/movies_content/JOHNWICK.webp',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Avengers: Infinity War',
                      rating: 4.7,
                      image: 'assets/images/movies_content/infinitywar.webp',
                      height: 280,
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

        // Segunda sección: Películas de acción
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Películas de acción',
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
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController2,
                  children: [
                    AppCard(
                      appName: 'Spider Man: Into the Spiderverse',
                      rating: 4.7,
                      image: 'assets/images/movies_content/ITSV.jpg',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Spider Man: Across the Spiderverse',
                      rating: 4.7,
                      image: 'assets/images/movies_content/ATSV.jpg',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Captain America and The Winter Soldier',
                      rating: 4.7,
                      image: 'assets/images/movies_content/CATWS.jpg',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'John Wick',
                      rating: 4.7,
                      image: 'assets/images/movies_content/JOHNWICK.webp',
                      height: 280,
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

        // Tercera sección: Películas clásicas
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Películas clásicas',
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
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController3,
                  children: [
                    AppCard(
                      appName: 'Donnie Darko',
                      rating: 4.7,
                      image: 'assets/images/movies_content/donniedarko.jpg',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Eternal Sunshine of the Spotless Mind',
                      rating: 4.8,
                      image: 'assets/images/movies_content/eternalsunshine.jpg',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Pulp Fiction',
                      rating: 4.9,
                      image: 'assets/images/movies_content/Pulp_Fiction.jpg',
                      height: 280,
                    ),
                    AppCard(
                      appName: 'Requiem for a Dream',
                      rating: 4.6,
                      image: 'assets/images/movies_content/requiem.jpg',
                      height: 280,
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
      ],
    );
  }
}
