import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamy_app/core/utils/name_of_suras.dart';
import 'package:islamy_app/core/utils/sperate_line.dart';
import 'package:islamy_app/features/home_page/data/models/sura_model.dart';
import '../../../../../../core/utils/styles.dart';

class CustomQuranListView extends StatelessWidget {
  const CustomQuranListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: NameOfSuras.suras.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            GoRouter.of(context).push("/quranDetails",extra: SuraModel(NameOfSuras.suras[index], index));
          },
          child: Row(
            children: [
               Expanded(
                child: Text(
                 "${NameOfSuras.numSuras[index]}",
                  style: Styles.textStyle25,
                  textAlign: TextAlign.center,
                ),
              ),
             SperateLine(width: 3, height: 40),
               Expanded(
                child: Text(
                  NameOfSuras.suras[index],
                  style: Styles.textStyle25,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
