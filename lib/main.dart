import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/commons/repositories/pokemon_repository.dart';
import 'package:pokedex/features/home/container/home_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeContainer(
        repository: PokemonRepository(dio: Dio()),
      ),
    );
  }
}
