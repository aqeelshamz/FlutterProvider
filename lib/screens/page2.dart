import 'package:ProviderPractice/providers/testProvider.dart';
import 'package:ProviderPractice/screens/page3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is page 2"),
            FlatButton(
              onPressed: () {
                Get.offAll(Page3());
              },
              child: Text("Go to page 3"),
            ),
            Consumer<TestProvider>(
              builder: (context, value, child) {
                return Text(value.value);
              },
            ),
          ],
        ),
      )),
    );
  }
}
