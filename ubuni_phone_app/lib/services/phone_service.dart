import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:ubuni_phone_app/models/phone_model.dart';

class PhoneService with ChangeNotifier {
  List<PhoneModel> _phoneLists = [];
  var item;
  List<PhoneModel> get phoneList => _phoneLists;

  List<PhoneModel> parsePhone(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<PhoneModel>((json) => PhoneModel.fromJson(json)).toList();
  }

  Future<bool> fetchPhone() async {
    bool _hasError = false;
    final response = await http.get(
        Uri.parse('https://www.paa.ubuni.co.tz/phones'),
        headers: {"accept": "application/json"});
    print(response.body);
    if (response.statusCode == 200) {
      _phoneLists = parsePhone(response.body);
      print(_phoneLists.length);
      _hasError = false;
      notifyListeners();
    } else {
      _hasError = true;
    }
    return _hasError;
  }

  // Future<bool> singlePhone(int id) async {
  //   bool _hasError = false;
  //   final response = await http.get(
  //       Uri.parse('https://www.paa.ubuni.co.tz/phones/:id'),
  //       headers: {"accept": "application/json"});
  //   print(response.body);
  //   if (response.statusCode == 200) {
  //     _phoneLists = parsePhone(response.body);
  //     print(_phoneLists.length);
  //     for (var item in _phoneLists) {
  //       if (item.id == id) {
  //         return item.id == id;
  //       } else {
  //         return null;
  //       }
  //     }

  //     _hasError = false;
  //     notifyListeners();
  //   } else {
  //     _hasError = true;
  //   }
  //   return _hasError;
  // }
  
}
