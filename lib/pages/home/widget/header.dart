import 'package:flutter/material.dart';
import 'package:game_store/pages/home/widget/search.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Welcome ,',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'What would you like to play ?',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
              Image.asset('assets/images/avatar.png', width: 50)
            ],
          ),
          const Search(),
        ],
      ),
    );
  }
}
