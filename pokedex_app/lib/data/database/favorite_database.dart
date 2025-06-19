import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:pokedex_app/data/models/favorite_pokemon_model.dart';

// ignore: avoid_classes_with_only_static_members
class FavoriteDatabase {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;
    return _database = await _initDatabase();
  }

  static Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), 'favorites.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE favorites (
            id INTEGER PRIMARY KEY,
            name TEXT,
            imageUrl TEXT,
            types TEXT
          )
        ''');
      },
    );
  }

  static Future<void> addFavorite(FavoritePokemonModel pokemon) async {
    final db = await database;
    await db.insert(
      'favorites',
      pokemon.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> removeFavorite(int id) async {
    final db = await database;
    await db.delete('favorites', where: 'id = ?', whereArgs: [id]);
  }

  static Future<List<FavoritePokemonModel>> getFavorites() async {
    final db = await database;
    final result = await db.query('favorites');
    return result.map(FavoritePokemonModelDb.fromMap).toList();
  }

  static Future<bool> isFavorite(int id) async {
    final db = await database;
    final result = await db.query(
      'favorites',
      where: 'id = ?',
      whereArgs: [id],
    );
    return result.isNotEmpty;
  }
}
