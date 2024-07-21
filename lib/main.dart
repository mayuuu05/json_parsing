import 'package:flutter/material.dart';
import 'package:json_parsing/8.1/provider/json_data_provider.dart';
import 'package:json_parsing/8.1/utils/routes.dart';

import 'package:json_parsing/8.2/provider/user_provider.dart';
import 'package:json_parsing/8.3/provider/post_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     providers: [
       ChangeNotifierProvider(
        create: (context) => PhotoProvider()),
       ChangeNotifierProvider(
           create: (context) => UserProvider()),
       ChangeNotifierProvider(
           create: (context) => PostProvider()),
     ] ,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: AppRoutes.routes,
        ),


    );
  }
}

