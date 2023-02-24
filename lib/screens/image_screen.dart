import 'package:facebook_page/data/data.dart';
import 'package:facebook_page/models/story.dart';
import 'package:facebook_page/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

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
          stories[_currentIndex].user.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black38,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: ProfileAvatar(
            imageUrl: stories[_currentIndex].user.imageUrl,
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
          dragStartBehavior: DragStartBehavior.down,
          onHorizontalDragEnd: (details) {
            final double velocity = details.velocity.pixelsPerSecond.dx;
            if (velocity > 0) {
              // swiped right
              setState(() {
                _currentIndex =
                    (_currentIndex - 1).clamp(0, stories.length - 1);
              });
            } else if (velocity < 0) {
              // swiped left
              setState(() {
                _currentIndex =
                    (_currentIndex + 1).clamp(0, stories.length - 1);
              });
            }
          },
          behavior: HitTestBehavior.opaque,
          child: Image.network(
            stories[_currentIndex].imageUrl,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
            errorBuilder:
                (BuildContext context, Object error, StackTrace? stackTrace) {
              return Center(
                child: Text('Failed to load image'),
              );
            },
          ),
        ),
      ),
    );
  }
}
