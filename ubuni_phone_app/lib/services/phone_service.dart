import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:ubuni_phone_app/constants/apis.dart';
import 'package:ubuni_phone_app/models/phone_model.dart';
import 'package:http/http.dart' as http;

class PhoneService with ChangeNotifier {
  PhoneService() {
    fetchPhone();
  }
  List<PhoneModel> _list = [];
  List<PhoneModel> get phoneList => _list;

  Future<bool> fetchPhone() async {
    print('first try');
    bool _hasError = false;

    final response = await http.get(Uri.parse('$httpApi' + 'phones'),
        headers: {"accept": "application/json"});
    print(response.body);
    if (response.statusCode == 200) {
      final List<PhoneModel> _fetchPhones = json
          .decode(response.body)
          .map((json) => PhoneModel.fromJson(json))
          .toList()
          .cast<PhoneModel>();
      _list = _fetchPhones;

      notifyListeners();
    } else {
      _hasError = true;
    }
    return _hasError;
  }

  PhoneModel getPhone(int phoneId) {
    for (int i = 0; i <= phoneList.length; i++) {
      if (phoneList.elementAt(i).id == phoneId) {
        return phoneList.elementAt(i);
      }
    }
    throw Exception('not found');
  }
}
