import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../models/pokemon_list_response.dart';

class PokemonApiDatasource {
  final http.Client client;

  PokemonApiDatasource(this.client);

  Future<PokemonListResponse> fetchPokemon({
    int offset = 0,
    int limit = 20,
  }) async {
    final url = Uri.https('pokeapi.co', '/api/v2/pokemon', {
      'offset': '$offset',
      'limit': '$limit',
    });

    final res = await client
        .get(url, headers: {'Accept': 'application/json'})
        .timeout(const Duration(seconds: 10));

    if (res.statusCode != 200) {
      throw HttpException('HTTP ${res.statusCode}');
    }

    return pokemonListResponseFromJson(res.body);
  }
}
