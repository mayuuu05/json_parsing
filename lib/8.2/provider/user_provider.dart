
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/user_model.dart';

class UserProvider extends ChangeNotifier {
  List<UserModal> userList = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/user_data.json');
    List user = jsonDecode(json);
    userList = user.map((e) => UserModal.fromMap(e)).toList();
    notifyListeners();
  }

  UserProvider() {
    jsonParsing();
  }
}
