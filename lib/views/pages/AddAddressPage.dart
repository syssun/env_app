import 'package:EnvApp/widgets/MyWidgets.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddAddressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: MyWidgets.buildAppBar(context, '添加地址'),

        body: Container(
          child: Center(
            child: Text("AddAddress"),
          ),
        ));
  }
}
