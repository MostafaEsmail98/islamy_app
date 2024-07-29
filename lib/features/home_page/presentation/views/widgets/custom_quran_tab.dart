import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/colors.dart';
import 'package:islamy_app/core/utils/styles.dart';
import 'package:islamy_app/core/utils/title.dart';
import 'package:islamy_app/features/home_page/presentation/views/widgets/custom_quran_list_view.dart';

class CustomQuranTab extends StatelessWidget {
  const CustomQuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         const TitleApp(),
          SizedBox(
            height: 227,
            child: Image.asset("assets/image/quran_image.png"),
          ),
          Container(
            height: 3,
            color: KColors.kPrimaryColor,
          ),
          Row(
            children: [
              const Expanded(
                child: Text(
                  "عدد الايات",
                  style: Styles.textStyle25,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 50,
                width: 3,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: KColors.kPrimaryColor)),
              ),
              const Expanded(
                child: Text(
                  "اسم السورة",
                  style: Styles.textStyle25,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Container(
            height: 3,
            color: KColors.kPrimaryColor,
          ),
          const CustomQuranListView()
        ],
      ),
    );
  }


}
