import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokemon_api_datasource.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonApiDatasource datasource;

  PokemonRepositoryImpl(this.datasource);

  @override
  Future<List<Pokemon>> getPokemonList({int offset = 0, int limit = 20}) async {
    final response = await datasource.fetchPokemon(
      offset: offset,
      limit: limit,
    );

    return response.items
        .map((e) => Pokemon(name: e.name, url: e.url))
        .toList();
  }
}
