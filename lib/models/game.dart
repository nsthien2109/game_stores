class Game {
  String name;
  String bgImg;
  String icon;
  String type;
  num score;
  num download;
  num review;
  String description;
  List<String> imgs;

  Game(
      {required this.name,
      required this.bgImg,
      required this.icon,
      required this.type,
      required this.score,
      required this.download,
      required this.review,
      required this.description,
      required this.imgs});

  static List<Game> generateGame(){
    return [
      Game(name: 'Ori and Blind Forest', bgImg: 'assets/images/ori1.jpg', icon: 'assets/images/ori_logo.png', type: 'Adventure', score: 4.5, download: 200, review: 15, description: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable",
          imgs: [
            'assets/images/ori2.jpg',
            'assets/images/ori3.jpg',
            'assets/images/ori4.jpg',
            'assets/images/ori5.jpg'
          ]),
      Game(name: 'Raman Legend', bgImg: 'assets/images/rl1.jpg', icon: 'assets/images/rl_logo.png', type: 'Adventure', score: 4.2, download: 2200, review: 78, description: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable",
          imgs: [
            'assets/images/rl2.jpg',
            'assets/images/rl3.jpg',
            'assets/images/rl4.jpg',
            'assets/images/rl5.jpg'
          ]),
      Game(name: 'Ori and Blind Forest', bgImg: 'assets/images/ori1.jpg', icon: 'assets/images/ori_logo.png', type: 'Adventure', score: 4.5, download: 200, review: 15, description: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable",
          imgs: [
            'assets/images/ori2.jpg',
            'assets/images/ori3.jpg',
            'assets/images/ori4.jpg',
            'assets/images/ori5.jpg'
          ])
    ];
  }
}
