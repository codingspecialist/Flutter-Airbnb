import 'package:flutter/material.dart';
import 'package:flutter_airbnb_sample/constants.dart';
import 'package:flutter_airbnb_sample/size.dart';

class CustomPopularItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/1.webp"),
          ),
          SizedBox(height: kXSmall_gap),
          Row(
            children: [
              Icon(Icons.star, color: kAccentColor),
              Icon(Icons.star, color: kAccentColor),
              Icon(Icons.star, color: kAccentColor),
              Icon(Icons.star, color: kAccentColor),
              Icon(Icons.star, color: kAccentColor),
            ],
          ),
          SizedBox(height: kXSmall_gap),
          Text(
            "깔끔하고 다 갖춰져있어서 좋았어요:) 위치도 완전 좋아용 다들 여기 살고싶다구ㅋㅋㅋㅋㅋ 화장실도 3개예요!!! 5명이서 씻는것도 전혀 불편함없이 좋았어요^^ 이불도 포근하고 좋습니당ㅎㅎ",
            style: kTextBody1Style,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: kXSmall_gap),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/1.webp"),
              ),
              SizedBox(width: kXSmall_gap),
              Column(
                children: [
                  Text(
                    "데어",
                    style: kTextBody2Style,
                  ),
                  Text("한국"),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
