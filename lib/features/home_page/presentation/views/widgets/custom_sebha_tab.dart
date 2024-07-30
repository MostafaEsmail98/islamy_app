import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/colors.dart';
import 'package:islamy_app/core/utils/styles.dart';
import 'package:islamy_app/core/utils/title.dart';
import 'package:islamy_app/core/utils/urlOfImage.dart';

class CustomSebhaTab extends StatelessWidget {
  const CustomSebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TitleApp(),
          SizedBox(
            height: 100,
            child: Image.asset(UrlOfImage.headSebhaImage),
          ),
          SizedBox(
            height: 227,
            child: Image.asset(UrlOfImage.bodySebhaImage),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "عدد التسبيحات",
                style: Styles.textStyle25.copyWith(
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: KColors.kPrimaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            height: 60,
            width: 50,
            child: const Center(
                child: Text(
              "1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Container(
              decoration: BoxDecoration(
                  color: KColors.kPrimaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              height: 50,
              child: const Center(
                child: Text(
                  "سبحان الله",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
