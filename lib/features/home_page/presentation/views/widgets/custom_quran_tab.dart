import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/colors.dart';
import 'package:islamy_app/core/utils/styles.dart';

class CustomQuranTab extends StatelessWidget {
  const CustomQuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text(
            "Islamy",
            style: Styles.textStyle30,
          ),
          SizedBox(
            height: 227,
            child: Image.asset("assets/image/quran_image.png"),
          ),
          Container(
            height: 3,
            color: KColors.kPrimaryColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "عدد الايات",
                style: Styles.textStyle25.copyWith(fontWeight: FontWeight.w500),
              ),
              Column(
                children: [
                  Container(
                    color: KColors.kPrimaryColor,
                    height: 50,
                    width: 3,
                  ),
                ],
              ),
              Text(
                "اسم السورة",
                style: Styles.textStyle25.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            height: 3,
            color: KColors.kPrimaryColor,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 114,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Row(

                  children: [
                    Expanded(
                      child: Text(
                        "256",
                        style: Styles.textStyle25,
                        textAlign:TextAlign.center ,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "البقرة",
                        style: Styles.textStyle25,
                        textAlign:TextAlign.center ,
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
