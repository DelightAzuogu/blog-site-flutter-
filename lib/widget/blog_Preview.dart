// ignore_for_file: avoid_print, file_names, deprecated_member_use

import 'package:flutter/material.dart';

class BlogPreview extends StatefulWidget {
  final String title;

  const BlogPreview({Key? key, required this.title}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<BlogPreview> createState() => _BlogPreviewState();
}

class _BlogPreviewState extends State<BlogPreview> {
  late dynamic title = widget.title;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: width > 800
          ? const EdgeInsets.all(30)
          : const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 15,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //the button for the next page
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                '/content',
                arguments: {"title": title},
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image
                Image(
                  image: const NetworkImage(
                    "https://reviewed-com-res.cloudinary.com/image/fetch/s--OPGcCdoJ--/b_white,c_limit,cs_srgb,f_auto,fl_progressive.strip_profile,g_center,q_auto,w_1200/https://reviewed-production.s3.amazonaws.com/1558119942449/Laptoporientation.jpg",
                  ),
                  height: width < 800 ? 400 : 450,
                  fit: BoxFit.cover,
                ),
                //title
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // description
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Lorem ipsum Sed eiusmod esse aliqua sed incididunt aliqua incididunt mollit id et sit",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    wordSpacing: 1.5,
                    height: 1.5,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
