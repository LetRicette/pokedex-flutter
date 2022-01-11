import 'package:flutter/material.dart';

import 'package:pokedex/commons/models/pokemon_model.dart';
import 'package:pokedex/features/pokedex/screens/home/pages/widgets/detail_app_bar_widgetr.dart';
import 'package:pokedex/features/pokedex/screens/home/pages/widgets/detail_list_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.pokemon,
    required this.list,
    required this.onBack,
    required this.controller,
    required this.onChangedPokemon,
  }) : super(key: key);
  final Pokemon pokemon;
  final List<Pokemon> list;
  final VoidCallback onBack;
  final PageController controller;
  final ValueChanged<Pokemon> onChangedPokemon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        DetailAppBarWidget(
          pokemon: pokemon,
          onBack: onBack,
        ),
        DetailListWidget(
          pokemon: pokemon,
          list: list,
          controller: controller,
          onChangedPokemon: onChangedPokemon,
        ),
      ],
    ));
  }
}
