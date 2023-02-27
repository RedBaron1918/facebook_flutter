import 'package:facebook_page/models/post.dart';
import 'package:facebook_page/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:dismissible_page/dismissible_page.dart';

class PostImageScreen extends StatelessWidget {
  final Post post;
  const PostImageScreen({required this.post, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  DismissiblePage( onDismissed: ()=> Navigator.of(context).pop(),
      isFullScreen: true,
      disabled: false,
      minRadius: 10,
      maxRadius: 800,
      dragSensitivity: .1,
      maxTransformValue: .9,
      direction: DismissiblePageDismissDirection.vertical,
      backgroundColor: Colors.black,
      dismissThresholds: const {
        DismissiblePageDismissDirection.vertical: .2,
      },
      minScale: .8,
      startingOpacity: 1,
      reverseDuration: const Duration(milliseconds: 250),
      child:Scaffold(
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
    )
    );
  }
}