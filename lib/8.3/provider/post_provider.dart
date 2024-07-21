import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing/8.3/model/post_model.dart';

class PostProvider extends ChangeNotifier
{
  late PostModel postModel;
  Future<void> initPost()
  async {
    String json = await rootBundle.loadString('assets/json/post-data.json');
    final response = jsonDecode(json);
    postModel = PostModel.fromJson(response);
    notifyListeners();
  }

  PostProvider()
  {
    initPost();
  }
}