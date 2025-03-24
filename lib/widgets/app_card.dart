import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final String appName;
  final double rating;
  final String image;

  AppCard({required this.appName, required this.rating, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(image, width: 80, height: 80),
          Text(appName, style: TextStyle(fontWeight: FontWeight.bold)),
          Text('$rating ★'),
        ],
      ),
    );
  }
}
