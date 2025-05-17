import 'package:flutter/material.dart';
import '../models/movie.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  MovieDetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(movie.imagePath, height: 200),
            SizedBox(height: 10),
            Text('Año: ${movie.year}'),
            Text('Director: ${movie.director}'),
            Text('Género: ${movie.genre}'),
            SizedBox(height: 10),
            Text(movie.synopsis),
          ],
        ),
      ),
    );
  }
}