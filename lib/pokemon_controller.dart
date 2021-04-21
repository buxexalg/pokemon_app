import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:pokemon_app/pokemon_class.dart';
import 'package:pokemon_app/pokemon_model.dart';

class PokemonController {

  final model = PokemonModel();

  Future<Pokemon> get pokemon => model.pokemon;

  getPokemon() => model.getPokemon(Random().nextInt(897));

  Color getBackgroundColor(String type) {
  switch(type) {
    case "normal": {
      return Color(0xFFA8A77A);
    }
    break;

    case "fire": {
      return Color(0xFFEE8130);
    }
    break;

    case "water": {
      return Color(0xFF6390F0);
    }
    break;

    case "electric": {
      return Color(0xFFF7D02C);
    }
    break;

    case "grass": {
      return Color(0xFF7AC74C);
    }
    break;

    case "ice": {
      return Color(0xFF96D9D6);
    }
    break;

    case "fighting": {
      return Color(0xFFC22E28);
    }
    break;

    case "poison": {
      return Color(0xFFA33EA1);
    }
    break;

    case "ground": {
      return Color(0xFFE2BF65);
    }
    break;

    case "flying": {
      return Color(0xFFA98FF3);
    }
    break;

    case "psychic": {
      return Color(0xFFF95587);
    }
    break;

    case "bug": {
      return Color(0xFFA6B91A);
    }
    break;

    case "rock": {
      return Color(0xFFB6A136);
    }
    break;


    case "ghost": {
      return Color(0xFF735797);
    }
    break;

    case "dragon": {
      return Color(0xFF6F35FC);
    }
    break;

    case "dark": {
      return Color(0xFF705746);
    }
    break;

    case "steel": {
      return Color(0xFFB7B7CE);
    }
    break;

    case "fairy": {
      return Color(0xFFD685AD);
    }
    break;

    default: {
      return Color(0xFFFFFFFF);
    }
  }
}
}