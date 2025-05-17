import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../widgets/movie_card.dart';
import 'movie_detail_screen.dart';

class CatalogScreen extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      title: 'Inception',
      year: '2010',
      director: 'Christopher Nolan',
      genre: 'Sci-Fi',
      synopsis: 'Un ladrón que roba secretos a través de sueños.',
      imagePath: 'assets/inception.jpg',
    ),
    // Agrega más películas aquí
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catálogo')),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieCard(
            movie: movies[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => MovieDetailScreen(movie: movies[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}