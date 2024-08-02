
import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/colors.dart';
import 'package:islamy_app/core/utils/styles.dart';
import 'package:islamy_app/features/home_page/data/models/sura_model.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/utils/urlOfImage.dart';
import '../../../manager/provider_quran.dart';

class QuranDetails extends StatefulWidget {
   QuranDetails({super.key, required this.suraModel });
  SuraModel suraModel ;

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  @override
  Widget build(BuildContext context) {
   // var args = ModalRoute.of(context)?.settings.arguments as SuraModel ;
    return ChangeNotifierProvider(
      create: (context) => SuraDetails()..loadFile(widget.suraModel.index),
      builder: (context, child) {
        var suraDetails = Provider.of<SuraDetails>(context);
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
                   child: Text(widget.suraModel.name,style: Styles.textStyle30,),
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
                        itemCount: suraDetails.sura.length,
                        itemBuilder: (context, index)
                      {
                        return Text(textAlign: TextAlign.center,suraDetails.sura[index],style: Styles.textStyle25,);
                      }, separatorBuilder: (BuildContext context, int index) {
                        return  Divider(color: KColors.kPrimaryColor,indent: 50,endIndent: 50,);
                      },)),
                    ),
                  ),

              ],
            ),
          ),
        );
      },
    );
  }
}
