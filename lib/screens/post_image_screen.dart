import 'package:facebook_page/models/post.dart';
import 'package:facebook_page/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class PostImageScreen extends StatelessWidget {
  final Post post;

  const PostImageScreen({required this.post, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        
        title: Text(
          post.user.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black12,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: ProfileAvatar(
            imageUrl: post.user.imageUrl,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.close),
            ),
          ),
        ],
      ),
      body: Material(
        
        color: Colors.transparent,
        child: Hero(
          tag: "${post.imageUrl}",
          child: Center(
            child: Image.network(
              "${post.imageUrl}",
            ),
          ),
        ),
      ),
    );
  }
}
