import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';
import 'package:game_store/pages/details/widget/detail_info.dart';
import 'package:game_store/pages/details/widget/detail_sliver_delegate.dart';

class DetailGame extends StatelessWidget {
  const DetailGame( this.game ,{Key? key}) : super(key: key);
  final Game game;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              delegate: DetailSliverDelegat(expandedHeight: 360,game: game,roundedContainerHeight: 30)
          ),
          SliverToBoxAdapter(
            child: DetailInfo(game),
          )
        ],
      ),
    );
  }
}
