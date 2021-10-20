import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';
import 'package:game_store/pages/details/widget/game_description.dart';
import 'package:game_store/pages/details/widget/game_info_gallery.dart';
import 'package:game_store/pages/details/widget/game_info_header.dart';
import 'package:game_store/pages/details/widget/game_review.dart';

class DetailInfo extends StatelessWidget {
  final Game game;
  const DetailInfo(this.game ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        children: [
          GameInfoHeader(game),
          GameInfoGallery(game),
          GameDescription(game),
          GameReview(game),
        ],
      )
    );
  }
}
