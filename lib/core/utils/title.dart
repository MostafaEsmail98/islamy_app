import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class TitleApp extends StatelessWidget {
  const TitleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   Text(
      AppLocalizations.of(context)!.appTitle,
      style: Styles.textStyle30,
    );
  }
}
