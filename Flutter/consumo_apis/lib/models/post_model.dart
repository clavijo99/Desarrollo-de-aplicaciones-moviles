import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  PostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  final int id;
  final int userId;
  final String title;
  final String body;



  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostModelToJson(this);

}




// class PostModel {
//   PostModel({
//     required this.userId,
//     required this.id,
//     required this.title,
//     required this.body,
//   });
//   final int userId;
//   final int id;
//   final String title;
//   final String body;

//   factory PostModel.fromJson(Map<String, dynamic> json) {
//     return PostModel(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//       body: json['body'],
//     );
//   }

//   Map<String, dynamic> toJson(){
//     return {
//       'userId': userId,
//       'id': id,
//       'title': title,
//       'body': body,
//     };
//   }
// }


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


/*
import 'package:esperar_taxi_drivers/domain/entities/pageable.dart';
import 'package:esperar_taxi_drivers/domain/entities/user/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class Users {
  Users({
    required this.content,
    required this.pageable,
  });

  final List<User> content;
  final Pageable pageable;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
*/