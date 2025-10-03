import 'package:consumo_apis/services/post_service.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {

  HomeProvider(){
    loadPosts();
  }

  final PostService _postService = PostService();

  List<dynamic>? posts;

  Future<void> loadPosts() async {
    posts = await _postService.getPosts();
    notifyListeners();
  }

}