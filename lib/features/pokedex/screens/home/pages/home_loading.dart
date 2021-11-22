import 'package:flutter/material.dart';
import 'package:pokedex/commons/widgets/po_loading.dart';

class HomeLoading extends StatelessWidget {
  const HomeLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PoLoading(),
      ),
    );
  }
}
