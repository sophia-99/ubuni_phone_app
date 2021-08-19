import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ubuni_phone_app/models/phone_model.dart';

class MultipleView extends StatefulWidget {
  @override
  _MultipleViewState createState() => _MultipleViewState();
}

class _MultipleViewState extends State<MultipleView> {
List phoneData;

  Future<List<PhoneModel>> getPhones() async {
    final response = await http.get(
        Uri.parse('https://www.paa.ubuni.co.tz/phones'),
        headers: {"Accept": "application/json"});
print(response.body);
if (response.statusCode == 200) {
      List phoneList = jsonDecode(response.body);
      List<PhoneModel> _fetchedPhones = [];
      phoneList.forEach((phone) {
        final _phone = PhoneModel.fromJson(phone);
        _fetchedPhones.add(_phone);
      });
      phoneData = _fetchedPhones;
      print(phoneData.length);
      return phoneData;
    } else {
      throw Exception('Failed to load phone');
    }
  }
  

  @override
  void initState() {
    super.initState();
    this.getPhones();
  }

 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: phoneData == null ? 0 : phoneData.length,
        // itemCount: data == null ? 0 : data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Container(
              decoration: BoxDecoration(
                ),
              height: 200.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width * 0.60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                    image:
                                        AssetImage(phoneData[index].image))),
                            // child: Image(
                            //   image: AssetImage('assets/images/beauty_one.jpg'),
                            // ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 40.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Center(child: Text('smartPhone')),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(phoneData[index].name,
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0)),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(phoneData[index].name,
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [Icon(Icons.select_all), Icon(Icons.label)],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
