import 'package:flutter/material.dart';
import 'package:flutter_airbnb_sample/constants.dart';
import 'package:flutter_airbnb_sample/size.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kLarge_padding),
      child: Row(
        children: [
          Image.asset("assets/airbnb_logo.png", width: 30, height: 30, color: Colors.white),
          SizedBox(width: kXSmall_gap),
          TextButton(
            onPressed: () {
              print("로고 클릭됨");
            },
            child: Text("airbnb", style: kTextAppBarLogoStyle),
          ),
          Spacer(),
          TextButton(
              child: Text("호스트가 되어보세요", style: kTextAppBarMenuStyle),
              onPressed: () {
                print("메뉴 클릭됨");
              }),
          SizedBox(width: kSmall_gap),
          TextButton(
              child: Text("도움말", style: kTextAppBarMenuStyle),
              onPressed: () {
                print("메뉴 클릭됨");
              }),
          SizedBox(width: kSmall_gap),
          TextButton(
              child: Text("회원가입", style: kTextAppBarMenuStyle),
              onPressed: () {
                print("메뉴 클릭됨");
              }),
          SizedBox(width: kSmall_gap),
          TextButton(
              child: Text("로그인", style: kTextAppBarMenuStyle),
              onPressed: () {
                print("메뉴 클릭됨");
              }),
        ],
      ),
    );
  }
}
