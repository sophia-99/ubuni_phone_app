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

class PhoneModel {
  final int id;
  final String name;
  final String brand;
  final String image;

  PhoneModel({
     this.id,
     this.name,
     this.brand,
     this.image,
  });

  factory PhoneModel.fromJson(Map<String, dynamic> json) {
    return PhoneModel(
      id: json['id'],
      name: json['name'],
      brand: json['Brand'],
      image: json['Image_url'],
    );
  }
}

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
