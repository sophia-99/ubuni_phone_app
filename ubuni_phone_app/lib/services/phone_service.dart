import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:ubuni_phone_app/models/phone_model.dart';


class PhoneService with ChangeNotifier {
PhoneService() {
getPhones();
}

List<PhoneModel> _phoneLists = [];


List<PhoneModel> get phoneList => _phoneLists;



Future<bool> getPhones() async {
print('first try');
bool _hasError = false;
final List<PhoneModel> _fetchedPhones = [];
final response = await http.get(Uri.parse('https://www.paa.ubuni.co.tz/phones'),
headers: {"accept": "application/json"});

print(response.body);
if (response.statusCode == 200) {
final Map<String, dynamic> _data = json.decode(response.body);
_data['phones'].forEach((phone) {
final _phone = PhoneModel.fromMap(phone);
_fetchedPhones.add(_phone);
});

_phoneLists = _fetchedPhones;
print(_phoneLists.length);
notifyListeners();
} else {
_hasError = true;
}
return _hasError;
}
}






































// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:ubuni_phone_app/models/phone_model.dart';
// import 'package:http/http.dart' as http;

// class PhoneService with ChangeNotifier {
//   PhoneService() {
//     fetchPhones();
//   }
//   List<PhoneModel> _phoneLists = [];
//   List<PhoneModel> get phoneList => _phoneLists;

//   Future<bool> fetchPhones() async {
//     print('first try');
//     bool _hasError = false;
//     final List<PhoneModel> _fetchedPhones = [];
//     final response = await http.get(
//         Uri.parse('https://www.paa.ubuni.co.tz/phones'),
//         headers: {"accept": "application/json"});
//     print(response.body);

//     if (response.statusCode == 200) {
//       // final Map<String, dynamic> _data = json.decode(response.body);
//       final Map<String, dynamic> _data = json.decode(response.body);
//       _data['phones']
//       .forEach((phone) {
//         final _phone = PhoneModel.fromJson(phone);
//         _fetchedPhones.add(_phone);
//       });
//       _phoneLists = _fetchedPhones;
//       print(_phoneLists.length);
//       notifyListeners();
//     } else {
//       _hasError = true;
//     }
//     return _hasError;
//   }
// }
