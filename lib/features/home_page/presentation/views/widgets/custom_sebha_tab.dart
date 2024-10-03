import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/colors.dart';
import 'package:islamy_app/core/utils/styles.dart';
import 'package:islamy_app/core/utils/title.dart';
import 'package:islamy_app/core/utils/urlOfImage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class CustomSebhaTab extends StatefulWidget {
  const CustomSebhaTab({super.key});

  @override
  State<CustomSebhaTab> createState() => _CustomSebhaTabState();
}

class _CustomSebhaTabState extends State<CustomSebhaTab> {
  int counter = 0;
  int i = 0;
  List<String> tsbeeh = [
    "سبحان الله",
    "الله اكبر",
    "لا اله الا الله",
    "استغفر الله",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          counter++;
          if (counter == 34) {
            counter = 0;
            i++;
            if (i == tsbeeh.length) {
              i = 0;
            }
          }

          setState(() {});
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TitleApp(),
            SizedBox(height: MediaQuery.sizeOf(context).height*.15,),            SizedBox(
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
                  AppLocalizations.of(context)!.tasbehat,
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
              child:  Center(
                  child: Text(
                    "$counter",
                style: const TextStyle(
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
                child:  Center(
                  child: Text(
                    tsbeeh[i],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
