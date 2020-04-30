import 'package:EnvApp/views/pages/AddAddressPage.dart';
import 'package:EnvApp/widgets/MyWidgets.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: MyWidgets.buildAppBar(context, '我的地址'),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            MyWidgets.jump(context, new AddAddressPage());
          },
          child: new Icon(Icons.add_circle),
          elevation: 3.0,
          highlightElevation: 1.0,
          backgroundColor: Colors.red, // 红色
        ),
        body: Container(
          child: Center(
            child: Text("Address"),
          ),
        ));
  }
}
