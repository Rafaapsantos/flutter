import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_5/data/datasource/movie_data_source.dart';
import 'package:flutter_project_5/repository/movie_repository.dart';
import 'package:flutter_project_5/ui/search_movie_store.dart';

const String kOmdbApiKey = 'a95a50e8';

class SearchMovie extends StatefulWidget {
  const SearchMovie({super.key});

  @override
  State<SearchMovie> createState() => _SearchMovieState();
}

class _SearchMovieState extends State<SearchMovie> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();

  late final SearchMovieStore _movieStore;

  @override
  void initState() {
    super.initState();
    final dio = Dio();
    final dataSource = MovieDataSource(dio);
    final repository = GetMovieByTitleRepository(movieDataSource: dataSource);
    _movieStore = SearchMovieStore(repository: repository);
  }

  Future<void> _searchMovie() async {
    if (!_formKey.currentState!.validate()) return;

    final title = _titleController.text.trim();

    await _movieStore.getMovie(title, kOmdbApiKey);
    setState(() {}); // Força reconstrução para exibir resultados
  }

  @override
  Widget build(BuildContext context) {
    final movie = _movieStore.movie;
    final isLoading = _movieStore.isLoading;
    final errorMessage = _movieStore.errorMessage;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 10,
        shadowColor: Colors.amber[700],
        title: Row(
          children: [
            Icon(Icons.movie, color: Colors.amber[700], size: 30),
            const SizedBox(width: 10),
            const Text(
              'PubDev',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const Text(
              'Movies',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Buscar filme',
                  prefixIcon: Icon(Icons.search, color: Colors.amber[700]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber[700]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, digite um título';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _searchMovie,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber[700],
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Buscar', style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 20),
              if (isLoading)
                const CircularProgressIndicator(color: Colors.amber)
              else if (errorMessage != null)
                Text(
                  errorMessage,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                )
              else if (movie != null)
                Expanded(
                  child: Card(
                    elevation: 5,
                    color: Colors.grey[900],
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                movie.Poster,
                                height: 300,
                                fit: BoxFit.cover,
                                errorBuilder:
                                    (context, error, stackTrace) => Container(
                                      height: 300,
                                      color: Colors.grey[800],
                                      child: const Icon(
                                        Icons.broken_image,
                                        size: 50,
                                      ),
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          _buildMovieInfo('Título', movie.Title),
                          _buildMovieInfo('Ano', movie.Year),
                          _buildMovieInfo('Sinopse', movie.Plot),
                          _buildMovieInfo('Gênero', movie.Genre),
                          _buildMovieInfo('Diretor', movie.Director),
                          _buildMovieInfo('Roteirista', movie.Writer),
                          _buildMovieInfo('Atores', movie.Actors),
                          _buildMovieInfo('País', movie.Country),
                          _buildMovieInfo('Idioma', movie.Language),
                          _buildMovieInfo('Lançamento', movie.Released),
                          _buildMovieInfo('Duração', movie.Runtime),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMovieInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.amber[700],
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
