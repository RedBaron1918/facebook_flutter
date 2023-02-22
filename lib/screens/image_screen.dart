import 'package:facebook_page/models/story.dart';
import 'package:facebook_page/models/user.dart';
import 'package:facebook_page/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
class ImageScreen extends StatelessWidget {
  final Story story;

  const ImageScreen({required this.story, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          story.user.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey[400],
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: ProfileAvatar(
            imageUrl: story.user.imageUrl,
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
      body: Center(
        child: Image.network(
          story.imageUrl,
        ),
      ),
    );
  }
}
