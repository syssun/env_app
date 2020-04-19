import 'package:EnvApp/widgets/MyWidgets.dart';
import 'package:flutter/material.dart';

import '../views/comments/findpage/mock_data.dart';
import '../views/comments/findpage/friend_card.dart';

class MinePage extends StatelessWidget {
  const MinePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: MyWidgets.buildAppBar(context, "我的"),
      body: ListView.separated(
        itemCount: friendList.length,
        itemBuilder: (context, index) {
          return FriendCard(data: friendList[index]);
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: .5,
            indent: 75,
            color: Color(0xFFDDDDDD),
          );
        },
      ),
    );
  }
}
