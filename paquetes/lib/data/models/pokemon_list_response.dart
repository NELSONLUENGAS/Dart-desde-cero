import 'dart:convert';

import 'package:paquetes/data/models/pokemon_list_item.dart';

/// JSON → Object
PokemonListResponse pokemonListResponseFromJson(String str) =>
    PokemonListResponse.fromJson(json.decode(str));

/// Object → JSON
String pokemonListResponseToJson(PokemonListResponse data) =>
    json.encode(data.toJson());

class PokemonListResponse {
  final int count;
  final String? next;
  final String? previous;
  final List<PokemonListItem> items;

  PokemonListResponse({
    required this.count,
    this.next,
    this.previous,
    required this.items,
  });

  factory PokemonListResponse.fromJson(Map<String, dynamic> json) {
    return PokemonListResponse(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      items: (json['results'] as List)
          .map((e) => PokemonListItem.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': items.map((e) => e.toJson()).toList(),
    };
  }
}
