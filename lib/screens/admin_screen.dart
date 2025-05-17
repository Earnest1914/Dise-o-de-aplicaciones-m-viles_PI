import 'package:flutter/material.dart';
import '../models/movie.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  final List<Movie> movies = [];

  final _formKey = GlobalKey<FormState>();
  String title = '', year = '', director = '', genre = '', synopsis = '', imagePath = '';

  void _addMovie() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        movies.add(Movie(
          title: title,
          year: year,
          director: director,
          genre: genre,
          synopsis: synopsis,
          imagePath: imagePath,
        ));
      });
    }
  }

  void _removeMovie(int index) {
    setState(() {
      movies.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Administrar Catálogo')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(children: [
                TextFormField(decoration: InputDecoration(labelText: 'Título'), onSaved: (v) => title = v ?? ''),
                TextFormField(decoration: InputDecoration(labelText: 'Año'), onSaved: (v) => year = v ?? ''),
                TextFormField(decoration: InputDecoration(labelText: 'Director'), onSaved: (v) => director = v ?? ''),
                TextFormField(decoration: InputDecoration(labelText: 'Género'), onSaved: (v) => genre = v ?? ''),
                TextFormField(decoration: InputDecoration(labelText: 'Sinopsis'), onSaved: (v) => synopsis = v ?? ''),
                TextFormField(decoration: InputDecoration(labelText: 'Ruta de Imagen'), onSaved: (v) => imagePath = v ?? ''),
                SizedBox(height: 10),
                ElevatedButton(onPressed: _addMovie, child: Text('Agregar Película')),
              ]),
            ),
            Divider(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: movies.length,
              itemBuilder: (_, index) => ListTile(
                title: Text(movies[index].title),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _removeMovie(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
