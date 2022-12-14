class HeroSlider {
  final String image;

  HeroSlider({required this.image});

  factory HeroSlider.fromJson(Map<String, dynamic> json) {
    return HeroSlider(
      image: json['image'],
    );
  }
}
