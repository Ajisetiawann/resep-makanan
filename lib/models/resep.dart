class Resep {
  final String name;
  final String images;
  final double rating;
  final String totalTime;

  Resep({this.name, this.images, this.rating, this.totalTime});

  factory Resep.fromJson(dynamic json) {
    return Resep(name: json['name'] as String, images: json['images'][0]['hostedLargeUrl'] as String, rating: json['rating'] as double, totalTime: json['totalTime'] as String);
  }

  static List<Resep> resepFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Resep.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {name: $name, image: $images, rating: $rating, totalTime: $totalTime}';
  }
}