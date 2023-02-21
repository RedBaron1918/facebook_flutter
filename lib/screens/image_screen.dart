import 'package:facebook_page/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';


class ImageScreen extends StatelessWidget {
   ImageScreen({this.story,super.key});
  var story;

   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(story.user.name,style: const TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.grey[400],
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: ProfileAvatar(
                    imageUrl: story.user.imageUrl,
          ),
        ),
        
      ),
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