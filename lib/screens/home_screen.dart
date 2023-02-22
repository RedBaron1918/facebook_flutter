import 'package:facebook_page/data/data.dart';
import 'package:facebook_page/screens/post_image_screen.dart';
import 'package:facebook_page/widgets/bottom_navigation.dart';
import 'package:facebook_page/widgets/circle_button.dart';
import 'package:facebook_page/widgets/post_container.dart';
import 'package:facebook_page/widgets/stories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../widgets/create_post_container.dart';
import '../widgets/scroll_to_hide.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController controller = ScrollController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const iconColor = Color.fromARGB(255, 1, 115, 168);

    return Scaffold(
      bottomNavigationBar: ScrollToHideWidget(
        controller: controller,
        child: const MyBottomNavigationBar(),
      ),
      body: CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.white,
            floating: true,
            title: const Text(
              'facebook',
              style: TextStyle(
                color: iconColor,
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
          SliverToBoxAdapter(
            child: CreatePostContaner(currentUser: currentUser),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverToBoxAdapter(
            child: Stories(currentUser: currentUser, stories: stories),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 5),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final post = posts[index];
                return PostContainer(
                  post: post,
                  call: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PostImageScreen(post: post))),
                );
              },
              childCount: posts.length,
            ),
          ),
        ],
      ),
    );
  }
}
