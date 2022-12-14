import 'dart:convert';

import 'package:meet2go/models/HeroSlider.dart';

class HeroSliderController {
  static Future<List<HeroSlider>> getAll() async {
    const response = '''[
      {"image": "https://www.meet2go.com/_nuxt/img/dd357eb.png"},
      {"image": "https://www.meet2go.com/_nuxt/img/988eef1.jpg"}
    ]''';
    final heroDecoded = jsonDecode(response) as List;
    final heros = heroDecoded.map((e) => HeroSlider.fromJson(e)).toList();
    return heros;
  }
}
