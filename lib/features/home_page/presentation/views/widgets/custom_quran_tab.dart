import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/colors.dart';
import 'package:islamy_app/core/utils/sperate_line.dart';
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
          SperateLine(width: double.maxFinite, height: 3),
          Row(
            children: [
              const Expanded(
                child: Text(
                  "عدد الايات",
                  style: Styles.textStyle25,
                  textAlign: TextAlign.center,
                ),
              ),
              SperateLine(width: 3, height: 50),
              const Expanded(
                child: Text(
                  "اسم السورة",
                  style: Styles.textStyle25,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SperateLine(width: double.maxFinite, height: 3),
          const CustomQuranListView()
        ],
      ),
    );
  }


}
