
import 'package:flutter/material.dart';
import 'package:json_parsing/8.1/view/home_page.dart';

class AppRoutes{
  static Map <String,Widget Function(BuildContext)> routes= {
    '/': (context) => const HomePage(),
  };
}