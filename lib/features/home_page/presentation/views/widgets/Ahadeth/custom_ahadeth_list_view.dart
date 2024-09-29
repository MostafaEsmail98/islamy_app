import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamy_app/features/home_page/data/models/ahadeth_model.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../data/DataOfAhadeth.dart';

class CustomAhadethListView extends StatelessWidget {

  const CustomAhadethListView({super.key});

  @override
  Widget build(BuildContext context) {

         return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 50,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  GoRouter.of(context).push("/ahadethDetails",
                      extra: AhadethModel(ProviderAhadeth.allAhdeth[index].title,
                          ProviderAhadeth.allAhdeth[index].contant));
                },
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text("الحديث رقم ${index + 1} ",
                      style: Styles.textStyle25.copyWith(
                        fontWeight: FontWeight.w500,
                      )),
                )),
              );
            },
          );
  }
}
