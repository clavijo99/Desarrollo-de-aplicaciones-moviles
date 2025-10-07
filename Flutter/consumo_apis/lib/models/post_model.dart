class PostModel {
  PostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  final int userId;
  final int id;
  final String title;
  final String body;

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }
}


  /*

factory Product.fromJson(Map<String, dynamic> json) {
  return Product(
    id: json['id'],
    title: json['title'],
    price: json['price'].toDouble(),
    description: json['description'],
    category: json['category'],
    image: json['image'],
    rating: Rating.fromJson(json['rating']),
  );
}

Map<String, dynamic> toJson() {
  return {
    'id': id,
    'title': title,
    'price': price,
    'description': description,
    'category': category,
    'image': image,
    'rating': rating.toJson(),
  };
}
*/