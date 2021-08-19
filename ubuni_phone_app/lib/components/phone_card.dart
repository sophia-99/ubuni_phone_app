// import 'package:flutter/material.dart';
// import 'package:ubuni_phone_app/models/phone_model.dart';


// class PhoneCard extends StatelessWidget {
//   final PhoneModel phone;
//   PhoneCard({Key key, this.phone}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//       child: Container(
//         decoration: BoxDecoration(
//             // color: Colors.white,
//             // borderRadius: BorderRadius.circular(10.0)
//             ),
//         height: 200.0,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(10.0),
//                   width: MediaQuery.of(context).size.width * 0.60,
//                   // color: Colors.white,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.0),
//                       color: Colors.white),
//                   child: Center(
//                     child: Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30.0),
//                           image:
//                               DecorationImage(image: AssetImage(phone.image
//                                 // data[index]['image']
//                                 )
//                                 )
//                                 ),
//                       // child: Image(
//                       //   image: AssetImage('assets/images/beauty_one.jpg'),
//                       // ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               width: 10.0,
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
//               child: Column(
//                 children: [
//          Container(
//                   height: 40.0,
//                   width: 110.0,
//                   decoration: BoxDecoration(
//                     color: Colors.amber,
//                     borderRadius: BorderRadius.circular(30.0)),
//                     child: Center(child: Text('smartPhone')),
//                 ),
//                 SizedBox(
//                     height: 20.0,
//                   ),

//                   Text(phone.name, style: TextStyle(
//                     color: Colors.white,fontSize: 25.0)),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   Text(phone.brand, style: TextStyle(color: Colors.white)),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   Row(
//                     children: [Icon(Icons.select_all), Icon(Icons.label)],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
