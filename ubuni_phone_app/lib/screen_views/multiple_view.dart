

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:ubuni_phone_app/components/phone_card.dart';
import 'package:ubuni_phone_app/services/phone_service.dart';

// import 'package:provider/provider.dart';

// import 'package:ubuni_phone_app/services/phone_service.dart';

// class PhoneModel {
//   final int id;
//   final String name;
//   final String brand;
//   final String image;

//   PhoneModel({
//     this.id,
//     this.name,
//     this.brand,
//     this.image,
//   });

//   PhoneModel.fromMap(Map<String, dynamic> map)
//       : assert(map['id'] = !null),
//         id = map['id'],
//         name = map['name'],
//         brand = map['Brand'],
//         image = map['Image_url'];
// }

class MultipleView extends StatefulWidget {
  @override
  _MultipleViewState createState() => _MultipleViewState();
}

class _MultipleViewState extends State<MultipleView> {
  // List data;

  @override
  // void initState() {
  //   super.initState();
  //   this.getPhones();
  // }

  // Future<bool> getPhones() async {
  //   final response =
  //       await http.get(Uri.parse('https://www.paa.ubuni.co.tz/phones'));
  //   print(response.body);

  //   setState(() {
  //     var _phoneLists = json.decode(response.body);
  //     data = _phoneLists['phones'];
  //   });
  //   return hasError;
  // }

  // if (response.statusCode == 200) {
  //   // If the server did return a 200 OK response,
  //   // then parse the JSON.
  //   return PhoneModel.fromJson(jsonDecode(response.body));
  // } else {
  //   // If the server did not return a 200 OK response,
  //   // then throw an exception.
  //   throw Exception('Failed to load phone');
  // }

  @override
  Widget build(BuildContext context) {
    final _phoneService = Provider.of<PhoneService>(context);
    return ListView.builder(
        itemCount: _phoneService.phoneList.length,
        itemBuilder: (context, index) {
          return PhoneCard(
            phone: _phoneService.phoneList[index],
          );
         
        });
  }
}
