import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_store/pages/home/widget/newest_game.dart';
import 'package:game_store/pages/home/widget/popular_game.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);

  final cat = [
    {
      'title': 'Arcade',
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF605CF4)
    },
    {
      'title': 'Racing',
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFFFC77A6)
    },
    {
      'title': 'Casino',
      'icon': Icons.casino_outlined,
      'color': const Color(0xFF4391FF)
    },
    {
      'title': 'More',
      'icon': Icons.margin_rounded,
      'color': const Color(0xFF7182F2)
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 160,
            padding: const EdgeInsets.all(25),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => Column(children: [
                      Container(
                        padding: const EdgeInsets.all(23),
                        decoration: BoxDecoration(
                            color: cat[index]['color'] as Color,
                            borderRadius: BorderRadius.circular(18)),
                        child: Column(
                          children: [
                            Icon(
                              cat[index]['icon'] as IconData,
                              color: Colors.white,
                              size: 27,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        cat[index]['title'].toString(),
                        style: const TextStyle(fontSize: 17),
                      ),
                    ]),
                separatorBuilder: (_, index) => const SizedBox(
                      width: 17,
                    ),
                itemCount: cat.length),
          ),
          _buildTitle("Popular Game"),
          PopularGame(),
          _buildTitle("Newest Game"),
          NewestGame()
        ],
      ),
      decoration: const BoxDecoration(
          color: Color(0xFFF6F8FF),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    );
  }

  Widget _buildTitle(String text){
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.centerLeft,
      child: Text(text,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    );
  }
}
