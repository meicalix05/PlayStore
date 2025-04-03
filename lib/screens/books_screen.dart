import 'package:flutter/material.dart';
import '../widgets/app_card.dart';

class BooksScreen extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Libros recomendados para ti',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
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
                height: 230,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  child: Row(
                    children: [
                      AppCard(
                        appName: 'La Cancion de Aquiles',
                        rating: 4.8,
                        image:
                            'assets/images/books_content/ae574733-eaf6-40a9-86c2-96b1dafde524_Original.png',
                        height: 280,
                      ),
                      AppCard(
                        appName: 'Sapiens',
                        rating: 4.9,
                        image:
                            'assets/images/books_content/sapiens_book_cover.png',
                        height: 280,
                      ),
                      AppCard(
                        appName: 'Educated Book',
                        rating: 4.7,
                        image:
                            'assets/images/books_content/educated_book_cover.png',
                        height: 280,
                      ),
                      AppCard(
                        appName: 'To All the Boys Ive Loved Before',
                        rating: 5.0,
                        image: 'assets/images/books_content/TATBILB.png',
                        height: 280,
                      ),
                      AppCard(
                        appName: 'El Titanic',
                        rating: 4.9,
                        image: 'assets/images/books_content/ElTitanic.webp',
                        height: 280,
                      ),
                      AppCard(
                        appName: 'Harry Potter y la Piedra Filosofal',
                        rating: 5.0,
                        image:
                            'assets/images/books_content/HarryPotterPiedraF.webp',
                        height: 280,
                      ),
                      AppCard(
                        appName: 'Harry Potter y la Camara Secreta',
                        rating: 5.0,
                        image:
                            'assets/images/books_content/HarryPotterCamaraS.webp',
                        height: 280,
                      ),
                      AppCard(
                        appName: 'Harry Potter y el Prisionero de Azkaban',
                        rating: 5.0,
                        image:
                            'assets/images/books_content/HarryPotteryelprisionerodeAzkaban.webp',
                        height: 280,
                      ),
                      AppCard(
                        appName: 'Harry Potter y el Caliz de Fuego',
                        rating: 5.0,
                        image:
                            'assets/images/books_content/HarryPotteryelCalizdeF.webp',
                        height: 280,
                      ),
                      AppCard(
                        appName: 'La Metamorfosis',
                        rating: 4.8,
                        image: 'assets/images/books_content/metamorfosis.jpg',
                        height: 280,
                      ),
                      AppCard(
                        appName: 'Crimen & Castigo',
                        rating: 4.9,
                        image: 'assets/images/books_content/crimenycastigo.jpg',
                        height: 280,
                      ),
                      AppCard(
                        appName: '1984',
                        rating: 4.7,
                        image: 'assets/images/books_content/1984.jpg',
                        height: 280,
                      ),
                      AppCard(
                        appName: 'Hannibal',
                        rating: 4.6,
                        image: 'assets/images/books_content/Hannibal.jpg',
                        height: 280,
                      ),
                    ],
                  ),
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
