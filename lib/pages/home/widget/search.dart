import 'package:flutter/material.dart';
import 'package:game_store/contants/colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.mic,
                  color: Colors.white,
                )),
            prefixIcon: const Icon(
              Icons.search,
              color: primaryColor,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            hintText: 'Search game',
            fillColor: const Color(0xffF6F8FF),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(width: 0, style: BorderStyle.none))),
      ),
    );
  }
}
