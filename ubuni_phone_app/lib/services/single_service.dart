import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:ubuni_phone_app/constants/apis.dart';
import 'package:ubuni_phone_app/models/phone_model.dart';

class SingleService with ChangeNotifier {
  late PhoneModel  phoneModel;
  late String data;

  Future<bool> getSinglePhone(int id) async {
    bool _hasError = false;

    final response = await http.get(Uri.parse('$httpApi' + 'phones/' + ':id'),
        headers: {"accept": "application/json"});
    print(response.body);

    if (response.statusCode == 200) {
      final _phone = json.decode(response.body);
      final _single = PhoneModel.fromJson(_phone['phone']);
      data = _single.toString();
      print(_single);
    } else {
      _hasError = true;
    }

    return _hasError;
  }
 
}