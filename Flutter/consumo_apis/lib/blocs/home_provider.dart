import 'package:consumo_apis/models/post_model.dart';
import 'package:consumo_apis/services/post_service.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {

  HomeProvider(){
    loadPosts();
  }

  final PostService _postService = PostService();

  List<PostModel>? posts;

  Future<void> loadPosts() async {
    posts = await _postService.getPosts();
    notifyListeners();
  }


  Future<void> createPost() async{
    final response = await _postService.createPost(PostModel(userId: 1, title: "new post", body: "lorem ipsum"));

    if(response != null){
      posts?.insert(0, response);
      notifyListeners();
    }
  }

}