import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DropDownMenu extends StatefulWidget {
  final int button;
  const DropDownMenu(this.button, {super.key});

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  List<String> items = [];

  @override
  Widget build(BuildContext context) {
    if (widget.button == 1) {
      items = [
        "Categories",
        "Web Design",
        'Web Development',
      ];
    } else if (widget.button == 2) {
      items = [
        "Blog",
        'Standard Blog',
      ];
    }
    return Material(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: DropdownButton<String>(
          iconEnabledColor: Colors.black,
          elevation: 16,
          style: const TextStyle(color: Colors.white),
          dropdownColor: Colors.black,
          value: items[0],
          underline: Container(),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          onChanged: (value) {
            if (value == "Standard Blog") {
              Navigator.of(context).pushNamed(
                '/content',
                arguments: {"title": "Standard Blog"},
              );
            } else {
              Navigator.pushNamed(
                context,
                "/blog",
              );
            }
          },
          items: items.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
