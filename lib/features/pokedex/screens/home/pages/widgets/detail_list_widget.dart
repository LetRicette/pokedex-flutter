import 'package:flutter/material.dart';

import 'package:pokedex/commons/models/pokemon_model.dart';

class DetailListWidget extends StatelessWidget {
  const DetailListWidget({
    Key? key,
    required this.pokemon,
    required this.list,
    required this.controller,
    required this.onChangedPokemon,
  }) : super(key: key);

  final Pokemon pokemon;
  final List<Pokemon> list;
  final PageController controller;
  final ValueChanged<Pokemon> onChangedPokemon;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: 0,
      right: 0,
      height: 350,
      child: Container(
        color: pokemon.baseColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      pokemon.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "#${pokemon.num}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: PageView(
                onPageChanged: (index) => onChangedPokemon(list[index]),
                controller: controller,
                children: list.map(
                  (e) {
                    bool diff = e.name != pokemon.name;
                    return AnimatedOpacity(
                      duration: Duration(milliseconds: 200),
                      opacity: diff ? 0.4 : 1.0,
                      child: TweenAnimationBuilder<double>(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                          tween: Tween<double>(
                              end: diff ? 100 : 300, begin: diff ? 300 : 100),
                          builder: (context, value, child) {
                            return Center(
                              child: Image.network(
                                e.image,
                                width: value,
                                fit: BoxFit.contain,
                                color:
                                    diff ? Colors.black.withOpacity(0.4) : null,
                              ),
                            );
                          }),
                    );
                  },
                ).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
