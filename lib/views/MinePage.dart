import 'package:flutter/material.dart';
import 'package:EnvApp/views/pages/LoginPage.dart';
import 'package:EnvApp/widgets/MyWidgets.dart';
//floatingActionButton: FloatingActionButton(
//onPressed: (){
//jump(context,new LoginPage());
//},
//tooltip: '选择图片',
//child: Icon(Icons.add_a_photo),
//)





class MinePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new _Page();
  }
}
class _Page extends State<MinePage>{

  void   jump(BuildContext context,Widget widget) {
    Navigator.push<String>(
      context,
      new MaterialPageRoute(
        builder: (context) => widget,
      ),
    ) ;
  }



  @override
  Widget build(BuildContext context){
    return layout(context);
  }
  Widget layout(BuildContext context){
    return new Scaffold(
      appBar: MyWidgets.buildAppBar(context, "我的"),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text('登录'),
            onTap: (){
              jump(context,new LoginPage());
            },
          ),
        ],
      ),

    );
  }
}
