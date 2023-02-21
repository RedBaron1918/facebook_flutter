import 'package:facebook_page/models/story.dart';
import 'package:flutter/material.dart';


class ImageScreen extends StatelessWidget {
   ImageScreen({this.story,super.key});
  var story;

   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Image.network(
            '${story?.imageUrl}',
          ),
        ),
      ),
    );
  }
}