import 'package:ProviderPractice/providers/testProvider.dart';
import 'package:ProviderPractice/screens/page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

String _text = "";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Entire screen rebuild");
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is home Page"),
            FlatButton(
              onPressed: () {
                Get.offAll(Page2());
              },
              child: Text("Go to page 2"),
            ),
            Consumer<TestProvider>(builder: (context, provider, child){
              return Text(provider.value);
            }),
            TextField(
              onChanged: (txt) {
                _text = txt;
              },
            ),
            FlatButton(
              onPressed: () {
                context.read<TestProvider>().changeValue(_text);
                    printValue(context);
              },
              child: Text("Change value"),
            )
          ],
        )),
      ),  
    );
  }

  printValue(BuildContext context) {
    print(context.read<TestProvider>().value);
  }
}
