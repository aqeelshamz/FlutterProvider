import 'package:ProviderPractice/providers/testProvider.dart';
import 'package:ProviderPractice/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TestProvider()),
      ],
      child: GetMaterialApp(
        home: Home(),
      ),
    );
  }
}
