import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:game_store/contants/colors.dart';
import 'package:game_store/pages/home/widget/category.dart';
import 'package:game_store/pages/home/widget/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 50),
          child: Stack(
            children: [
              Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(150, 50),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                ),
              ),
              Positioned(
                child: Transform(
                  transform: Matrix4.identity()..rotateZ(10),
                  origin: const Offset(260, 60),
                  child: Image.asset(
                    'assets/images/bg_liquid.png',
                    width: 200,
                  ),
                ),
              ),
              Column(
                children: [const HomeHeader(), Categories()],
              )
            ],
          ),

        ),
    bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar(){
    return Container(
      height: 70,
      color: Color(0xFFF6F8FF),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 5
              )
            ]
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          child: BottomNavigationBar(
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 15,
            unselectedFontSize: 13,
            type: BottomNavigationBarType.fixed,
            items: [
              _buildItem(Icons.home_rounded, "Home"),
              _buildItem(Icons.more_horiz, "Application"),
              _buildItem(Icons.play_arrow_rounded, "Film"),
              _buildItem(Icons.menu_book_outlined, "Book"),
            ]
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildItem(icon , text){
    return BottomNavigationBarItem(
        icon: Container(
          margin: const EdgeInsets.only(bottom: 5),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8)
          ),
          child: Icon(icon),
        ),
        label: text
    );
  }

}
