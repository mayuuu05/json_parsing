import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing/8.1/model/json_model.dart';

class PhotoProvider extends ChangeNotifier{
  List<PhotoModal> photoList= [];
  Future<List> jsonParsing()
  async {
    String json = await rootBundle.loadString('assets/json/photo_data.json');
    List photo=jsonDecode(json);
    return photo;
  }
  Future<void> fromToList()
  async {
    List Photo =await jsonParsing();
    photoList=Photo.map((e) => PhotoModal.fromMap(e)).toList();
    notifyListeners();
  }
  PhotoProvider(){
    fromToList();
  }
}