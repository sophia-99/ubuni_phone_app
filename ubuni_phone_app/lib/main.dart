import 'package:flutter/material.dart';
import 'package:ubuni_phone_app/App.dart';
import 'package:provider/provider.dart';
import 'package:ubuni_phone_app/services/phone_service.dart';

void main() {
  runApp(
    MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => PhoneService()),
  ], child: App()));
}
