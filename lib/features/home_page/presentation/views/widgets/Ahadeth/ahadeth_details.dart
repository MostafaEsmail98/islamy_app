import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/colors.dart';
import 'package:islamy_app/core/utils/styles.dart';
import 'package:islamy_app/features/home_page/data/models/ahadeth_model.dart';


import 'package:provider/provider.dart';

import '../../../../../../core/utils/urlOfImage.dart';


class AhadethDetails extends StatelessWidget {

 AhadethModel ahadethModel ;


  AhadethDetails(this.ahadethModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      UrlOfImage.background,
                    ))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(ahadethModel.title,style: Styles.textStyle30,),
                )),
                const SizedBox(height: 40,),
                Center(
                  child: SizedBox(
                    height: 600,
                    width: double.maxFinite,
                    child: Card(
                        elevation: 100,
                        shape: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(color: Colors.white,width: 3),),
                        child: ListView.separated(
                          itemCount: 10,
                          itemBuilder: (context, index)
                          {
                            return Text(textAlign: TextAlign.center,ahadethModel.contant[0],style: Styles.textStyle25,);
                          }, separatorBuilder: (BuildContext context, int index) {
                          return  Divider(color: KColors.kPrimaryColor,indent: 50,endIndent: 50,);
                        },)),
                  ),
                ),

              ],
            ),
          ),
        );
      }
}
