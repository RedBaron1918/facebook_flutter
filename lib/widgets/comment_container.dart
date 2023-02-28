import 'package:flutter/material.dart';
import 'package:facebook_page/widgets/profile_avatar.dart';

class CommentSection extends StatelessWidget {
  final String image;
  final String name;
  final String text;
  const CommentSection(
      {required this.image, required this.name, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ProfileAvatar(imageUrl: image),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    text,
                    softWrap: true,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
