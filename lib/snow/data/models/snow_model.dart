class SnowModel {
  final String name;
  final String description;
  final String image;

  SnowModel({required this.name, required this.description, this.image = 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg' });

  factory SnowModel.fromJson(json) {
    return SnowModel(
      name: json['name'],
      description: json['description'],
      image: json['image'],
    );
  }
}