import 'package:flutter/material.dart';

class AddComment extends StatefulWidget {
  const AddComment({Key? key}) : super(key: key);

  @override
  State<AddComment> createState() => _AddCommentState();
}

class _AddCommentState extends State<AddComment> {
  final myController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 100,
      ),
      child: Column(
        children: [
          const Text(
            "Add Comment",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                textFormField("Enter Email"),
                textFormField("Enter Name"),
                const TextField(
                  minLines: 1,
                  maxLines: 10,
                  maxLength: 1000,
                  decoration: InputDecoration(hintText: "Enter Comment"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: InkWell(
                    onTap: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.black,
                      height: 50,
                      width: double.infinity,
                      child: Text(
                        "ADD COMMENT",
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width > 800 ? 40 : 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textFormField(String hint) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
      ),
      validator: (value) => validator(value),
    );
  }

  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }
}
