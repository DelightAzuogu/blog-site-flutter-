// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// this is the pagination for all the blog page

class HomePagination extends StatelessWidget {
  final int page;
  const HomePagination({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // this is the arrow
          Padding(
            padding: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                String pageString =
                    page > 1 ? (page - 1).toString() : (1).toString();
                int pageCount = page > 1 ? page - 1 : 1;
                Navigator.of(context).pushNamed(
                  '/home/$pageString',
                  arguments: pageCount,
                );
              },
              child: const Icon(Icons.arrow_back_ios),
            ),
          ),
          if (page > 2) pagesText(page - 2, context),
          if (page > 2) vertDivider(),
          if (page > 1) pagesText(page - 1, context),
          if (page > 1) vertDivider(),
          pagesText(page, context),
          vertDivider(),
          pagesText(page + 1, context),
          vertDivider(),
          pagesText(page + 2, context),
          Padding(
            padding: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                String pageString = (page + 1).toString();
                Navigator.of(context).pushNamed(
                  '/home/$pageString',
                  arguments: page + 1,
                );
              },
              child: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }

  Widget pagesText(int page, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: page == this.page
            ? Border(
                bottom: BorderSide(
                  width: 1.5,
                  color: Color.fromARGB(255, 145, 144, 144),
                ),
              )
            : Border.all(width: 0, color: Colors.transparent),
      ),
      child: InkWell(
        onTap: () {
          String pageString = (page).toString();
          Navigator.of(context).pushNamed(
            '/home/$pageString',
            arguments: page,
          );
        },
        child: Text(
          (page).toString(),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget vertDivider() {
    return Container(
      height: 15,
      width: 1,
      color: Colors.black,
    );
  }
}
