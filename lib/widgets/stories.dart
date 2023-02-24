import 'package:facebook_page/models/story.dart';
import 'package:facebook_page/models/user.dart';
import 'package:facebook_page/screens/image_screen.dart';
import 'package:facebook_page/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({super.key, required this.currentUser, required this.stories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: _StoryCard(isAddStory: true, currentUser: currentUser),
            );
          }
          final Story story = stories[index - 1];
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: _StoryCard(
                story: story,
                call: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        ImageScreen(story: story, index: index - 1),
                  ),
                ),
              ));
        },
        itemCount: 1 + stories.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final bool? isAddStory;
  final User? currentUser;
  final Story? story;
  final Function? call;

  const _StoryCard(
      {this.isAddStory = false, this.currentUser, this.story, this.call});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (call != null) {
          call!();
        }
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
              image: NetworkImage(
                isAddStory == true
                    ? currentUser?.imageUrl ?? ''
                    : story?.imageUrl ?? '',
              ),
              height: double.infinity,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity,
            width: 110,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black26],
                ),
                borderRadius: BorderRadius.circular(12)),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: isAddStory == true
                ? Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.add),
                      iconSize: 30,
                      color: Colors.lightBlue,
                      onPressed: () {},
                    ),
                  )
                : ProfileAvatar(imageUrl: story!.user.imageUrl),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              isAddStory == true ? "Add Story" : story!.user.name,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
