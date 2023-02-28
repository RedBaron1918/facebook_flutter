import 'package:facebook_page/models/user.dart';

class Comment {
  final User user;
  final String comment;

  const Comment({required this.user, required this.comment});
}
