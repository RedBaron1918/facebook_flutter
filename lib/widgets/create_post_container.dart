import 'package:facebook_page/models/user.dart';
import 'package:facebook_page/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreatePostContaner extends StatelessWidget {
  final User currentUser;

  const CreatePostContaner({super.key, required this.currentUser});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                backgroundImage: NetworkImage(currentUser.imageUrl),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "what's on your mind?",
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                    ),
                  ),
                ),
              ),
              CircleButton(
                icon: MdiIcons.viewGallery,
                iconSize: 16,
                press: () {},
              )
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          )
        ],
      ),
    );
  }
}
