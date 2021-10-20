import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_store/contants/colors.dart';
import 'package:game_store/models/game.dart';

class NewestGame extends StatelessWidget {
  NewestGame({Key? key}) : super(key: key);
  final List<Game> listGame = Game.generateGame();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 23),
      child: Column(
        children: listGame.map((e) => Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                  child: ClipRRect(
                    child: Image.asset(e.icon),
                  )
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e.name,style: const TextStyle(fontSize: 19,fontWeight: FontWeight.bold,letterSpacing: 0.5),),
                        const SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(e.type , style: const TextStyle(color: Colors.grey),),
                                _buildStar()
                              ],
                            ),
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: TextButton(
                                onPressed: (){},
                                child: const Text("Install",style: TextStyle(color: Colors.white),),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),
        )).toList(),
      )
    );
  }

  Widget _buildStar(){
    final colorStar = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey
    ];
    return Row(
      children: colorStar.map((e) => Icon(Icons.star , color: e,size: 15,)).toList(),
    );
  }
}
