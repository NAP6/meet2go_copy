import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meet2go/models/Event.dart';

class EventController {
  static String url = 'https://app.meet2go.com/items/events';
  static Future<List<Event>> getAll() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final eventsDecoded = json['data'] as List;
      final events = eventsDecoded.map((e) => Event.fromJson(e)).toList();
      return events;
    }
    return [];
  }

  static Future<List<Event>> search(String text_to_search) async {
    if (text_to_search.length < 3) return [];
    final response = await http.get(Uri.parse('$url?search=$text_to_search'));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final eventsDecoded = json['data'] as List;
      final events = eventsDecoded.map((e) => Event.fromJson(e)).toList();
      return events;
    }
    return [];
  }
}
