import 'dart:io';
import 'package:flutter/material.dart';
import '/screens/app_details_screen.dart';

class GameCard extends StatelessWidget {
  final String appName;
  final String description;
  final String backgroundImage;
  final String logoImage;
  final double rating;
  final String downloads;
  final String buttonText;

  GameCard({
    required this.appName,
    required this.description,
    required this.backgroundImage,
    required this.logoImage,
    required this.rating,
    required this.downloads,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: Platform.isAndroid ? MediaQuery.of(context).size.width * 0.9 : 400,
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
}

/*Widget _buildGameCard(
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
    width: Platform.isAndroid ? MediaQuery.of(context).size.width * 0.9 : 400,
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
}*/
