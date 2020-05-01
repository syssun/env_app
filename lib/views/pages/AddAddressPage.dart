import 'package:EnvApp/entities/AddressBean.dart';
import 'package:EnvApp/widgets/MyWidgets.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:city_pickers/city_pickers.dart';

class AddAddressPage extends StatelessWidget {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  TextEditingController addressController = TextEditingController();
  AddressBean address = new AddressBean();
  void _forSubmitted() {
    var _form = _formKey.currentState;

    if (_form.validate()) {
      _form.save();
      // print(_name);
      //print(_password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: MyWidgets.buildAppBar(context, '添加地址'),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            autovalidate: true,
            child: new Column(
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(
                      //labelText: 'Your Name',
                      hintText: '联系人'),
                  onSaved: (val) {
                    address.setName=val;
                  },
                ),
                new TextFormField(
                  decoration: new InputDecoration(hintText: '手机号码'),
                  validator: (val) {
                    return val.length != 11 ? "手机号码错误" : null;
                  },
                  onSaved: (val) {
                    address.sePhone=val;
                  },
                ),
                new TextFormField(
                  controller: addressController,
                  decoration: new InputDecoration(hintText: '省市区'),
                  readOnly: true,
                  onSaved: (val) {
                    address.seArea = val ;
                  },
                  onTap: () async {
                    Result result = await CityPickers.showCityPicker(
                      context: context,
                    );
                    String ss = result.provinceName + result.cityName + result.areaName;
                    addressController.text =ss ;

                  },
                ),
                new TextFormField(
                  maxLines: 3,
                  decoration: new InputDecoration(hintText: '详细地址'),
                  onSaved: (val) {
                    address.seInfo=val ;
                  },
                ),
                new Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child: new MaterialButton(
                    child: Text("保 存"),
                    elevation: 20,
                    minWidth: double.infinity,
                    color: Colors.blue,
                    height: 40.0,
                    textColor: Colors.white,
                    onPressed: () {
                      _forSubmitted();
                      print(address) ;
                    },
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
