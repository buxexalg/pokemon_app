import 'package:pokemon_app/pokemon_api.dart';
import 'package:pokemon_app/pokemon_class.dart';

class PokemonModel {

  final api = API();

  Future<Pokemon> _pokemon;

  Future<Pokemon> get pokemon => _pokemon;

  getPokemon(int number) {
    _pokemon = api.getPokemon(number);
  } 
}