class Event {
  final String title;
  final String image;
  final String description;
  final String date;

  Event(
      {required this.title,
      required this.image,
      required this.description,
      required this.date});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
        title: json['name'],
        image: 'https://d20zx9sjn15rrf.cloudfront.net/assets/' +
            json["cover_image"],
        description: json['information'],
        date: json['start_date'] + ' / ' + json['start_time']);
  }
}
