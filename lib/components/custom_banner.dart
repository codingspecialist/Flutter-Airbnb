import 'package:flutter/material.dart';
import 'package:flutter_airbnb_sample/constants.dart';
import 'package:flutter_airbnb_sample/size.dart';

class CustomBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/banner.webp",
          fit: BoxFit.cover,
          width: 1210,
          height: 300,
        ),
        Padding(
          padding: const EdgeInsets.all(kXXLarge_padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "이제, 여행은\n가까운 곳에서",
                style: kTextBannerTitleStyle,
              ),
              SizedBox(height: kSmall_gap),
              Text(
                "새로운 공간에 머물러 보세요.\n살아보기, 출장, 여행 등 다양한\n목적에 맞는 숙소를 찾아보세요.",
                style: kTextBannerSubTitleStyle,
              ),
              SizedBox(height: kSmall_gap),
              SizedBox(
                height: 35,
                width: 170,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "가까운 여행지 둘러보기",
                    style: kTextButton2Style,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
