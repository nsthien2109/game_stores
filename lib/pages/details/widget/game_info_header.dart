import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';

class GameInfoHeader extends StatelessWidget {

  final Game game;
  const GameInfoHeader(this.game ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex : 1,child: Image.asset(game.icon ,fit: BoxFit.cover,)),
        const SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(game.name,style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold, letterSpacing: 0.5),),
              const SizedBox(height: 5,),
              Text(game.type,style: const TextStyle(color: Colors.grey,fontSize: 16),),
              const SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.star_rounded , color: Colors.amber,size: 18,),
                      Text(game.score.toString())
                    ],
                  ),
                  const SizedBox(width: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.download_rounded, color: Colors.red,size: 18,),
                      Text(game.review.toString())
                    ],
                  ),
                ],
              ),

            ],
          ), flex: 4,)
      ],
    );
  }
}
