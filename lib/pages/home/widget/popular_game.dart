import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';
import 'package:game_store/pages/details/detail.dart';

class PopularGame extends StatelessWidget {
  PopularGame({Key? key}) : super(key: key);
  final List<Game> listgame = Game.generateGame();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 23,vertical: 20),
          itemBuilder: (_,index) => GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailGame(listgame[index]))),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(listgame[index].bgImg),
                ),
              ),
            ),
          ),
          separatorBuilder: (_,index) => const SizedBox(width: 15,),
          itemCount: listgame.length
      ),
    );
  }
}
