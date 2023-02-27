import 'package:facebook_page/models/comment.dart';
import 'package:facebook_page/models/user.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String? imageUrl;
  final int likes;
  final int commentSum;
  final int shares;
  List<Comment>? comment;

  Post(
      {required this.user,
      required this.caption,
      required this.timeAgo,
      this.imageUrl,
      required this.likes,
      required this.commentSum,
      required this.shares,
      this.comment});
}
