import 'package:facebook_page/data/data.dart';
import 'package:facebook_page/screens/image_screen.dart';
import 'package:facebook_page/widgets/circle_button.dart';
import 'package:facebook_page/widgets/post_container.dart';
import 'package:facebook_page/widgets/profile_avatar.dart';
import 'package:facebook_page/widgets/stories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../widgets/create_post_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.white,
        title: const Text(
          "facebook",
          style: TextStyle(
            color: Color.fromARGB(255, 1, 115, 168),
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.2,
          ),
        ),
        centerTitle: false,
        actions: [
          CircleButton(
            icon: Icons.search,
            iconSize: 28,
            press: () {},
          ),
          CircleButton(
            icon: MdiIcons.facebookMessenger,
            iconSize: 30,
            press: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.people), label: "people"),
          const BottomNavigationBarItem(
              icon: Icon(MdiIcons.television), label: "television"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopify), label: "shop"),
          const BottomNavigationBarItem(
              icon: Icon(MdiIcons.bell), label: "bell"),
          BottomNavigationBarItem(
              icon: ProfileAvatar(imageUrl: currentUser.imageUrl),
              label: "bell"),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          CreatePostContaner(currentUser: currentUser),
          const SizedBox(height: 10),
          Stories(currentUser: currentUser, stories: stories),
          const SizedBox(height: 5),
          Column(
            children: posts
                .map((post) => PostContainer(
                      post: post,
                      call: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ImageScreen(
                                story: post,
                              ))),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
