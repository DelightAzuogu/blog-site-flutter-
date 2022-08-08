import 'package:flutter/material.dart';
import 'package:project_two/pages/content_page/comment_layout.dart';
import 'package:project_two/pages/content_page/reply_comment.dart';

class Comments extends StatelessWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Comments",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width > 800 ? 40 : 30,
              fontWeight: FontWeight.bold),
        ),
        const CommentLayout(),
        const CommentReply(),
        const CommentLayout(),
        const CommentLayout(),
        const CommentLayout(),
      ],
    );
  }
}
