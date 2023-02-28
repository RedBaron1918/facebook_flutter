import 'package:facebook_page/data/data.dart';
import 'package:facebook_page/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.people), label: 'people'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.live_tv_rounded), label: 'television'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.storefront), label: 'shop'),
          const BottomNavigationBarItem(
              icon: Icon(MdiIcons.bell), label: 'bell'),
          BottomNavigationBarItem(
              icon: SizedBox(
                width: 28,
                height: 28,
                child: ProfileAvatar(imageUrl: currentUser.imageUrl),
              ),
              label: 'profile'),
        ],
      ),
    );
  }
}
