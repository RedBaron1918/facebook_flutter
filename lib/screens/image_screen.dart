import 'package:facebook_page/data/data.dart';
import 'package:facebook_page/models/story.dart';
import 'package:facebook_page/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  final Story story;
  final int index;

  const ImageScreen({required this.story, required this.index, Key? key})
      : super(key: key);

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text(
          widget.story.user.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black38,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: ProfileAvatar(
            imageUrl: widget.story.user.imageUrl,
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
        child: GestureDetector(
          onPanUpdate: (details) {
            // check the direction of the swipe and update the current index
            if (details.delta.dx > 0) {
              setState(() {
                _currentIndex =
                    (_currentIndex - 1).clamp(0, stories.length - 1);
              });
            } else if (details.delta.dx < 0) {
              setState(() {
                _currentIndex =
                    (_currentIndex + 1).clamp(0, stories.length - 1);
              });
            }
          },
          child: Image.network(
            stories[_currentIndex].imageUrl,
          ),
        ),
      ),
    );
  }
}
