import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';

class GameInfoGallery extends StatelessWidget {

  final Game game;
  const GameInfoGallery(this.game ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      height: 210,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (_,index)=> Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(game.imgs[index]),
            ),
          ),
          separatorBuilder: (_,index)=> const SizedBox(width: 10,),
          itemCount: game.imgs.length
      ),
    );
  }
}
