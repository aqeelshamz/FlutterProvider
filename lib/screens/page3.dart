import 'package:ProviderPractice/providers/testProvider.dart';
import 'package:ProviderPractice/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is Page 3"),
            FlatButton(
              onPressed: () {
                Get.offAll(Home());
              },
              child: Text("Go to Page 1"),
            ),
            Consumer<TestProvider>(builder: (context, value, child) {
              return Text(value.value);
            })
          ],
        )),
      ),
    );
  }
}
