import 'package:flutter/material.dart';
import '../models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final VoidCallback onTap;

  MovieCard({required this.movie, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(movie.imagePath, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(movie.title),
        onTap: onTap,
      ),
    );
  }
}