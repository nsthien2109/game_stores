import 'package:flutter/material.dart';
import 'package:game_store/contants/colors.dart';
import 'package:game_store/models/game.dart';
import 'package:readmore/readmore.dart';

class GameDescription extends StatelessWidget {
  final Game game;
  const GameDescription(this.game ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: double.infinity,
      child: ReadMoreText(
        game.description,
        style: const TextStyle(color: Colors.grey),
        trimLines: 2,
        colorClickableText: primaryColor,
        trimMode: TrimMode.Line,
        trimCollapsedText: '...Show more',
        trimExpandedText: ' show less',
      )
    );
  }
}
