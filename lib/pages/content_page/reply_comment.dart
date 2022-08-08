import 'package:flutter/material.dart';

class CommentReply extends StatelessWidget {
  const CommentReply({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          //picture
          Expanded(
            flex: 1,
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://reviewed-com-res.cloudinary.com/image/fetch/s--OPGcCdoJ--/b_white,c_limit,cs_srgb,f_auto,fl_progressive.strip_profile,g_center,q_auto,w_1200/https://reviewed-production.s3.amazonaws.com/1558119942449/Laptoporientation.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: VerticalDivider(
              width: 2,
              color: Colors.grey,
            ),
          ),
          // the comment
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    // this is the name the commenter
                    child: Text(
                      "Delight Azuogu",
                      style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width > 800 ? 18 : 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // this is the comment
                  Text(
                    "Duis ex ad cupidatat tempor Excepteur cillum cupidatat fugiat nostrud cupidatat dolor sunt sint sit nisi est eu exercitation incididunt adipisicing veniam velit id fugiat enim mollit amet anim veniam dolor",
                    style: TextStyle(
                      fontSize:
                          MediaQuery.of(context).size.width > 800 ? 15 : 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              // the reply button
              child: Text(
                "",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width > 800 ? 17 : 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
