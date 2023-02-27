import 'package:facebook_page/models/post.dart';
import 'package:facebook_page/widgets/comment_container.dart';
import 'package:facebook_page/widgets/profile_avatar.dart';
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
TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.3,
        leadingWidth: 100,
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
                  const SizedBox(width: 5,),
                  Text(
                  _getLikesFormatted(widget.post.likes),
                  overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          body: Column(
            children: [
              ListView.builder(itemCount: comments.length,itemBuilder:(BuildContext context, int index){
            Comment comment = comments[index];
            return CommentSection(image: comment.user.imageUrl, name: comment.user.name, text: comment.comment);
          } ),
          Form(
      child: TextFormField(
        controller: commentController,
        decoration: InputDecoration(
          labelText: "Add a comment",
        ),
      ),
    ),
            ],
          )
           
          
         
    );
  }
}
