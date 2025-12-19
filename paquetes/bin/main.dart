import 'package:http/http.dart' as http;
import 'package:paquetes/data/datasources/pokemon_api_datasource.dart';
import 'package:paquetes/data/repositories/pokemon_repository_impl.dart';
import 'package:paquetes/domain/usecases/get_pokemon_list.dart';

void main() async {
  final datasource = PokemonApiDatasource(http.Client());
  final repository = PokemonRepositoryImpl(datasource);
  final getPokemonList = GetPokemonList(repository);

  final pokemons = await getPokemonList(offset: 10, limit: 20);

  for (final p in pokemons) {
    print(p.name);
  }
}
