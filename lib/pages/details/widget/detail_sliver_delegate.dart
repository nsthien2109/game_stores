import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_store/contants/colors.dart';
import 'package:game_store/models/game.dart';
import 'package:game_store/pages/details/widget/detail_info.dart';

class DetailSliverDelegat extends SliverPersistentHeaderDelegate{

  final Game game;
  final double expandedHeight;
  final double roundedContainerHeight;

  DetailSliverDelegat({required this.game , required this.expandedHeight ,required this.roundedContainerHeight});


  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Image.asset(game.bgImg , width: double.infinity, height: expandedHeight, fit: BoxFit.cover,),
        Positioned(
            top: 30,
            left: 20,
            child: IconButton(onPressed: (){}, icon: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(color: Colors.white24 ,borderRadius: BorderRadius.circular(10)),
              child: const Icon(Icons.arrow_back_ios_rounded , color: Colors.white,),
            )),
        ),
        Positioned(
          height: expandedHeight - roundedContainerHeight - shrinkOffset,
            top: expandedHeight - 50,
            child: Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: roundedContainerHeight,
              decoration: const BoxDecoration(
                color: const Color(0xFFF6F8FF),
                borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25))
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 7),
                width: 60,
                height: 5,
                color: primaryColor,
              ),
            )
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
  
}