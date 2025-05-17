import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/catalog_screen.dart';
import 'screens/movie_detail_screen.dart';
import 'screens/admin_screen.dart'; //

void main() {
  runApp(MovieApp());
}

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Películas',
      initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        '/login': (_) => LoginScreen(),
        '/register': (_) => RegisterScreen(),
        '/catalog': (_) => CatalogScreen(),
        '/admin': (_) => AdminScreen(),
      },
    );
  }
}