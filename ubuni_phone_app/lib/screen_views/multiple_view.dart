import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

import 'package:flutter_image/flutter_image.dart';
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
    // final _phonService = Provider.of<PhoneService>(context);
    return ListView.builder(

        // itemCount: _phonService.phoneList.length,
        itemCount: phoneData == null ? 0 : phoneData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Container(
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        constraints: BoxConstraints(
                            maxHeight:
                                MediaQuery.of(context).size.height * 0.35,
                            maxWidth: MediaQuery.of(context).size.width * 0.65),
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
                                    fit: BoxFit.cover,
                                    image: NetworkImageWithRetry(
                                        phoneData[index].image
                                        // _phonService.phoneList[index].image
                                        ))),
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
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          constraints: BoxConstraints(
                              // maxHeight: MediaQuery.of(context).size.height*0.35,
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.25),
                          child: Text(phoneData[index].name,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 25.0)),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          constraints: BoxConstraints(
                              // maxHeight: MediaQuery.of(context).size.height*0.35,
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.25),
                          child: Text(phoneData[index].brand,
                              style: TextStyle(color: Colors.white)),
                        ),
                       
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
