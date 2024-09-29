import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/colors.dart';
import 'package:islamy_app/core/utils/styles.dart';
import 'package:islamy_app/core/utils/title.dart';
import 'package:islamy_app/core/utils/urlOfImage.dart';

class CustomRadioTab extends StatelessWidget {
  const CustomRadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const TitleApp(),
          SizedBox(height: MediaQuery.sizeOf(context).height*.15,),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            child: Image.asset(UrlOfImage.radioImage),
          ),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "إذاعة القرآن الكريم",
                style: Styles.textStyle25,
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_previous,
                    color: KColors.kPrimaryColor,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: KColors.kPrimaryColor,
                    size: 60,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_next,
                    color: KColors.kPrimaryColor,
                    size: 30,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
