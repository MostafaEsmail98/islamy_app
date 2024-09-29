import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/colors.dart';
import 'package:islamy_app/core/utils/styles.dart';
import 'package:islamy_app/features/home_page/data/models/ahadeth_model.dart';

import '../../../../../../core/utils/urlOfImage.dart';

class AhadethDetails extends StatelessWidget {
 final AhadethModel ahadethModel;

  const AhadethDetails(this.ahadethModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      UrlOfImage.background,
                    ))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      ahadethModel.title,
                      style: Styles.textStyle30,
                    ),
                  )),
                  const SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Card(
                            elevation: 100,
                            shape: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(color: Colors.white, width: 3),
                            ),
                            child: ListView.separated(
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    ahadethModel.contant.first,
                                    style: Styles.textStyle25,
                                  ),
                                );
                              },
                              separatorBuilder: (BuildContext context, int index) {
                                return Divider(
                                  color: KColors.kPrimaryColor,
                                  indent: 50,
                                  endIndent: 50,
                                );
                              },
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}
