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
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index;
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.story.user.name),
      direction: DismissDirection.down,
      onDismissed: (_) => Navigator.pop(context),
      child: Scaffold(
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
              padding:
                  const EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.close),
              ),
            ),
          ],
        ),
        body: GestureDetector(
          onHorizontalDragEnd: (details) {
            final double velocity = details.velocity.pixelsPerSecond.dx;
            if (velocity > 0) {
              _pageController.previousPage(
                  duration: const Duration(milliseconds: 150),
                  curve: Curves.easeInOut);
            } else if (velocity < 0) {
              _pageController.nextPage(
                  duration: const Duration(milliseconds: 150),
                  curve: Curves.easeInOut);
            }
          },
          child: PageView.builder(
            controller: _pageController,
            itemCount: stories.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) => Image.network(stories[index].imageUrl),
          ),
        ),
      ),
    );
  }
}
