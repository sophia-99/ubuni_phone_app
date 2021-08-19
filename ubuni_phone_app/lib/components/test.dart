
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

//   factory PhoneModel.fromJson(Map<String, dynamic> json) {
//     return PhoneModel(
//       id: json['id'],
//       name: json['name'],
//       brand: json['Brand'],
//       image: json['image_url'],
//     );
//   }
// }

// List phoneData;

// Future<List<PhoneModel>> getPhones() async {
//   final response = await http.get(
//       Uri.parse('https://www.paa.ubuni.co.tz/phones'),
//       headers: {"Accept": "application/json"});

//   print(response.body);

//   if (response.statusCode == 200) {
//     List phoneList = jsonDecode(response.body);
//     List<PhoneModel> _fetchedPhones = [];
//     phoneList.forEach((phone) {
//         final _phone = PhoneModel.fromJson(phone);
//         _fetchedPhones.add(_phone);
//       });
//       phoneData = _fetchedPhones;
//       print(phoneData.length);
//     // for (var phone in phoneList) {
//     //   _fetchedPhones.add(PhoneModel.fromJson(phone));
//     // }
//     // print(_fetchedPhones.length);
//     return phoneData;
//   } else {
//     throw Exception('Failed to load phone');
//   }
// }


 // Future<String> getPhones() async {
  //   var response = await http
  //       .get(Uri.parse(url), headers: {"Accept": "application/json"});
  //   // final response =
  //   //     await http.get(Uri.parse('https://www.paa.ubuni.co.tz/phones'));
  //   print(response.body);

  //   setState(() {
  //     var _phoneLists = json.decode(response.body);
  //     data = _phoneLists['phones'];
  //   });
  //   return "success";
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