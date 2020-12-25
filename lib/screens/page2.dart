import 'package:ProviderPractice/providers/testProvider.dart';
import 'package:ProviderPractice/screens/page3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

String providerValue;

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  void didChangeDependencies() {
    providerValue = Provider.of<TestProvider>(context).value;
    super.didChangeDependencies();
  }

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
            Text("Using provider value from Variable: " + providerValue),
          ],
        ),
      )),
    );
  }
}
