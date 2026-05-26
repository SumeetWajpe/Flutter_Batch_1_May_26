import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:using_future_posts_http/posts.model.dart';
import 'package:http/http.dart' as http;

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  Future<List<PostModel>> fetchPosts() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => PostModel.fromJson(json)).toList();
    } else {
      throw Exception("Failied to load posts !");
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
