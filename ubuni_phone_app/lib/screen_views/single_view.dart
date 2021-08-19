import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:ubuni_phone_app/models/api_response.dart';
import 'package:ubuni_phone_app/models/phone_model.dart';

class SingleView extends StatefulWidget {
  final int id;
  SingleView({this.id});
  @override
  _SingleViewState createState() => _SingleViewState();
}

class _SingleViewState extends State<SingleView> {
  static const API = "https://www.paa.ubuni.co.tz/phones/:id";
  

  Future<APIResponse<PhoneModel>> getPhone(int id) {
    return http.get(Uri.parse(API),
        headers: {"accept": "application/json"}).then((data) {
      if (data.statusCode == 200) {
        final _phone = json.decode(data.body);
      
        return APIResponse<PhoneModel>(data: PhoneModel.fromJson(_phone));
      }
      return APIResponse<PhoneModel>(error: true, errorMessage: "error");
    });
    // .catchError(
    //     () => APIResponse<PhoneModel>(error: true, errorMessage: "error"));
  }

  String errorMessage;
  PhoneModel phoneModel;

  @override
  void initState() {
    this.getPhone(widget.id).then((response) {
      if (response.error) {
        errorMessage = response.errorMessage ?? 'an error';
      }
      phoneModel = response.data;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 10.0),
                    child: phoneModel.image != null
                        ? Container(
                            height: MediaQuery.of(context).size.height * 0.50,
                            padding: EdgeInsets.all(10.0),
                            width: MediaQuery.of(context).size.width * 0.55,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(phoneModel.image)
                                    // AssetImage('assets/images/Screenshot from 2021-08-18 19-19-36.png')
                                    ),
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white),
                          )
                        : Container(
                            height: MediaQuery.of(context).size.height * 0.50,
                            padding: EdgeInsets.all(10.0),
                            width: MediaQuery.of(context).size.width * 0.55,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/Screenshot from 2021-08-18 19-19-36.png')),
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white),
                          ),
                  ),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Text(
                  phoneModel.name,
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Text(
                  phoneModel.brand,
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                )),
              ),
            ),
            Center(
              child: Container(
                child: Center(child: Text('20% OFF')),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            )
          ]),
    );
  }
}
