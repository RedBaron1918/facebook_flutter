import 'package:facebook_page/models/post.dart';
import 'package:facebook_page/widgets/comment_container.dart';
import 'package:flutter/material.dart';
import 'package:facebook_page/data/data.dart';
import "package:facebook_page/models/comment.dart";

class Comments extends StatefulWidget {
  final Post post;

  const Comments({required this.post, Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  String _getLikesFormatted(int likes) {
    if (likes >= 1000) {
      double likesInK = likes / 1000;
      return "${likesInK.toStringAsFixed(1)}k";
    } else {
      return likes.toString();
    }
  }

  void _addNewComment(String commentValue) {
    if (commentValue.isNotEmpty) {
      var newComment = Comment(user: currentUser, comment: commentValue);
      setState(() {
        widget.post.comment!.add(newComment);
      });
      commentController.clear();
      FocusScope.of(context).unfocus();
    }
  }

  TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.3,
          leadingWidth: 130,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    size: 11,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  _getLikesFormatted(widget.post.likes),
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                  size: 12,
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Icon(
                  Icons.thumb_up_alt_outlined,
                  color:
                      widget.post.liked ? Colors.blue[300] : Colors.grey[400],
                ),
                onTap: () {
                  setState(() {
                    widget.post.liked = !widget.post.liked;
                    if (widget.post.liked) {
                      widget.post.likes += 1;
                    } else {
                      widget.post.likes -= 1;
                    }
                  });
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: widget.post.comment!.length,
                itemBuilder: (BuildContext context, int index) {
                  Comment comment = widget.post.comment![index];
                  return CommentSection(
                      image: comment.user.imageUrl,
                      name: comment.user.name,
                      text: comment.comment);
                },
              ),
            ),
            CommentInput(
              commentController: commentController,
              onSubmitted: _addNewComment,
            )
          ],
        ));
  }
}

class CommentInput extends StatelessWidget {
  final TextEditingController commentController;
  final void Function(String) onSubmitted;

  const CommentInput(
      {Key? key, required this.commentController, required this.onSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: TextFormField(
                onFieldSubmitted: (value) {
                  String commentValue = commentController.text;
                  onSubmitted(commentValue);
                },
                controller: commentController,
                decoration: InputDecoration(
                  hintText: 'Write a comment...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 12.0,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: IconButton(
                onPressed: () {
                  String commentValue = commentController.text;
                  onSubmitted(commentValue);
                },
                icon: const Icon(Icons.send),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
