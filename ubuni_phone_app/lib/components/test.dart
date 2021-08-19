

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
      // child: Container(
        
                                // decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(30.0),
                                //     image: DecorationImage(
                                //         image:
                                //             AssetImage('assets/images/Screenshot from 2021-08-18 19-19-36.png')
                                //             ),
                                            

                                // ),
                          //   child: Center(
                          //     child: Container(
                          //       decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(30.0),
                          //           image: DecorationImage(
                          //               image:
                          //                   AssetImage('assets/images/Screenshot from 2021-08-18 19-19-36.png'))),
                          //       // child: Image(
                          //       //   image: AssetImage('assets/images/beauty_one.jpg'),
                          //       // ),
                          //     ),
                          //   ),
                          //
                          // ),


                  //  Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(child: Text('Samsung company',style: TextStyle(color: Colors.white),)),
                  // ),
                  // SizedBox(
                  //   height: 20.0,
                  // ),
                  // SizedBox(
                  //   width: 10.0,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //       horizontal: 10.0, vertical: 10.0),
                  //   child: Column(
                  //     children: [
                  //       Container(
                  //         height: 40.0,
                  //         width: 110.0,
                  //         decoration: BoxDecoration(
                  //             color: Colors.amber,
                  //             borderRadius: BorderRadius.circular(30.0)),
                  //         child: Center(child: Text('smartPhone')),
                  //       ),
                  //       SizedBox(
                  //         height: 20.0,
                  //       ),
                  //       Text('F1',
                  //           style:
                  //               TextStyle(color: Colors.white, fontSize: 25.0)),
                  //       SizedBox(
                  //         height: 20.0,
                  //       ),
                  //       Text('samsung',
                  //           style: TextStyle(color: Colors.white)),
                  //       SizedBox(
                  //         height: 20.0,
                  //       ),
                  //       Row(
                  //         children: [Icon(Icons.select_all), Icon(Icons.label)],
                  //       )
                  //     ],
                  //   ),
                  // )

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
//       : assert(map['id'] != null),
//         assert(map['name'] != null),
//         assert(map['Brand'] != null),
//         id = map['id'],
//         name = map['name'],
//         brand = map['Brand'],
//         image = map['image_url'];
// }


// // class PhoneModel {
// //   final int id;
// //   final String name;
// //   final String brand;
// //   final String image;

// //   PhoneModel({
// //     this.id,
// //     this.name,
// //     this.brand,
// //     this.image,
// //   });

// //   PhoneModel.fromMap(Map<String, dynamic> map)
// //       : assert(map['id'] = !null),
// //         id = map['id'],
// //         name = map['name'],
// //         brand = map['Brand'],
// //         image = map['Image_url'];
// // }

// // List<PhoneModel> samplePhoneData = [
// //   PhoneModel(
// //       id: 1,
// //       name: "F1",
// //       brand: "Techno",
// //       image: 'assets/images/Screenshot from 2021-08-18 19-19-36.png'),
// //   PhoneModel(
// //       id: 2,
// //       name: "FF2",
// //       brand: "samsung",
// //       image: 'assets/images/Screenshot from 2021-08-18 19-19-36.png'),
// //   PhoneModel(
// //       id: 3,
// //       name: "A11",
// //       brand: "samsung",
// //       image: 'assets/images/Screenshot from 2021-08-18 19-19-36.png'),
// //   PhoneModel(
// //       id: 4,
// //       name: "F178",
// //       brand: "Techno",
// //       image: 'assets/images/Screenshot from 2021-08-18 19-19-36.png'),
// //   PhoneModel(
// //       id: 5,
// //       name: "Iphonex",
// //       brand: "ios",
// //       image: 'assets/images/Screenshot from 2021-08-18 19-19-36.png')
// // ];
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
  //       final _phone = PhoneModel.fromJson(phone);
  //       _fetchedPhones.add(_phone);
  //     });
  //     phoneData = _fetchedPhones;
  //     print(phoneData.length);
  //     return phoneData;
  //   } else {
  //     throw Exception('Failed to load phone');
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   this.getPhones();
  // }
  // class PhoneService with ChangeNotifier {
//   PhoneService() {
//     getPhones();
//   }
//   List<PhoneModel> _phoneLists = [];

//   List phoneList;

//   Future<List<PhoneModel>> getPhones() async {
//     final response = await http.get(
//         Uri.parse('https://www.paa.ubuni.co.tz/phones'),
//         headers: {"Accept": "application/json"});
//     print(response.body);
//     if (response.statusCode == 200) {
//       // List phoneList = jsonDecode(response.body);
//       List<PhoneModel> _fetchedPhones = [];

//       final List<dynamic> phoneList = jsonDecode(response.body);
//       _fetchedPhones = phoneList.map((e) => PhoneModel.fromJson(e)).toList();

//       _phoneLists = _fetchedPhones;
//       print(_phoneLists.length);
//       // phoneList.forEach((phone) {
//       //   final _phone = PhoneModel.fromJson(phone);
//       //   _fetchedPhones.add(_phone);
//       // });

//       // phoneData = _fetchedPhones;
//       // print(phoneData.length);
//       return _phoneLists;
//     } else {
//       throw Exception('Failed to load phone');
//     }
//   }
// }

// // List<PhoneModel> _phoneLists = [];

// // List<PhoneModel> get phoneList => _phoneLists;

// //   Future<bool> getPhones() async {
// //     print('first try');
// //     bool _hasError = false;
// //     final List<PhoneModel> _fetchedPhones = [];
// //     final response = await http.get(
// //         Uri.parse('https://www.paa.ubuni.co.tz/phones'),
// //         headers: {"accept": "application/json"});
// //     print(response.body);

// //     if (response.statusCode == 200) {
// //       // final Map<String, dynamic> _data = json.decode(response.body);
// //       final Map<String, dynamic> _data = json.decode(response.body);
// //       _data['phones']
// //       .forEach((phone) {
// //         final _phone = PhoneModel.fromJson(phone);
// //         _fetchedPhones.add(_phone);
// //       });
// //       _phoneLists = _fetchedPhones;
// //       print(_phoneLists.length);
// //       notifyListeners();
// //     } else {
// //       _hasError = true;
// //     }
// //     return _hasError;
// //   }
// // }