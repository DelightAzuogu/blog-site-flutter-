import 'package:flutter/material.dart';

class CommentLayout extends StatelessWidget {
  const CommentLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        // the commenter picture
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
        Expanded(
          flex: 9,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  // this is the name the commenter
                  child: Text(
                    "Delight Azuogu",
                    style: TextStyle(
                      fontSize: width > 800 ? 20 : 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (width <= 450)
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: InkWell(
                      // the reply button
                      child: Text(
                        "Reply",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: width > 800 ? 17 : 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        //handle the reply
                      },
                    ),
                  ),
                // this is the comment
                Text(
                  "Duis ex ad cupidatat tempor Excepteur cillum cupidatat fugiat nostrud cupidatat dolor sunt sint sit nisi est eu exercitation incididunt adipisicing veniam velit id fugiat enim mollit amet anim veniam dolor dolor irure velit commodo cillum sit nulla ullamco magna amet magna cupidatat qui labore cillum sit in tempor veniam consequat non laborum adipisicing aliqua ea nisi sint. Unde quod at minus quia velit ipsa ea qui.",
                  style: TextStyle(
                    fontSize: width > 800 ? 17 : 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (width > 450)
          Expanded(
            flex: 1,
            child: InkWell(
              // the reply button
              child: Text(
                "Reply",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: width > 800 ? 17 : 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                //handle the reply button
              },
            ),
          ),
      ],
    );
  }
}
