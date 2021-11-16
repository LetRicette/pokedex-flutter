import 'package:pokedex/commons/models/pokemon_model.dart';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getAllPokemons();
}

class PokemonRepository implements IPokemonRepository {
  @override
  Future<List<Pokemon>> getAllPokemons() {}
}
