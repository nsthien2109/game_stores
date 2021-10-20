import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_store/contants/colors.dart';
import 'package:game_store/models/game.dart';

class GameReview extends StatelessWidget {

  final Game game;
  const GameReview(this.game,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Positioned(
        bottom: 0,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Rating and Reviews' , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 0.5),),
                TextButton(onPressed: (){}, child: const Text('View',style: TextStyle(fontSize: 15 , color: Colors.grey),))
              ],
            ),
            Row(
              children: [
                Text(game.score.toString(),style: const TextStyle(fontSize: 40 , fontWeight: FontWeight.bold),),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStar(),
                    const SizedBox(height: 2,),
                    Text.rich(TextSpan(
                      text: game.review.toString(), style: const TextStyle(fontSize: 16,color: Colors.grey),
                      children: const [
                        TextSpan(
                          text: '  reviews',
                          style: TextStyle(fontSize: 16,color: Colors.grey)
                        )
                      ]
                    )),
                  ],
                )
              ],
            ),
            const SizedBox(height: 25,),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(onPressed: (){}, child: const Text('Install',style: TextStyle(color: Colors.white, fontSize: 20),)),
            )
          ],
        ),
      ),
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
      children: colorStar.map((e) => Icon(Icons.star , color: e,size: 18,)).toList(),
    );
  }

}
