import 'package:flutter/material.dart';
import 'package:flutter_airbnb_sample/components/custom_form_field.dart';
import 'package:flutter_airbnb_sample/constants.dart';
import 'package:flutter_airbnb_sample/size.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-0.5, -0.8),
      child: Container(
        height: 480,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(kXLarge_padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("에어비앤비에서 숙소를\n검색하세요.", style: kTextFormTitleStyle),
                SizedBox(height: kXXSmall_gap),
                Text("혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체' 숙소까지, 에어비앤비에 다 있습니다.",
                    style: kTextFormBody1Style),
                SizedBox(height: kSmall_gap),
                CustomFormField(
                  prefixText: "위치",
                  hintText: "근처 추천 장소",
                ),
                SizedBox(height: kXSmall_gap),
                Row(
                  children: [
                    Expanded(
                        child: CustomFormField(
                      prefixText: "체크인",
                      hintText: "날짜 입력",
                    )),
                    Expanded(
                        child: CustomFormField(
                      prefixText: "체크 아웃",
                      hintText: "날짜 입력",
                    )),
                  ],
                ),
                SizedBox(height: kXSmall_gap),
                Row(
                  children: [
                    Expanded(
                        child: CustomFormField(
                      prefixText: "성인",
                      hintText: "2",
                      hasDropdown: true,
                    )),
                    Expanded(
                        child: CustomFormField(
                      prefixText: "어린이",
                      hintText: "0",
                      hasDropdown: true,
                    )),
                  ],
                ),
                SizedBox(height: kSmall_gap),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: kAccentColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {
                      print("서브밋 클릭됨");
                    },
                    child: Text(
                      "검색",
                      style: kTextButton1Style,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
