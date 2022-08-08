// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:project_two/Router/router.dart';

void main() {
  runApp(
    const MaterialApp(
      initialRoute: "/",
      onGenerateRoute: RouterGenerator.generateRoute,
    ),
  );
}
