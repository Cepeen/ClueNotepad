import 'package:clue_notepad/tables.dart';
import 'package:flutter/material.dart';
import 'package:clue_notepad/models/app_settings.dart';
import 'package:provider/provider.dart';

class ChooseEditionDialog extends StatelessWidget {
  const ChooseEditionDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(textAlign: TextAlign.center, context.l10n!.choseEdition),
      children: <Widget>[
        _editionOption(context, context.l10n!.hasbro, 1),
        _editionOption(context, context.l10n!.discover, 2),
        _editionOption(context, context.l10n!.classic, 3),
        _editionOption(context, context.l10n!.theSimpsonsEdition, 4),
        _editionOption(context, context.l10n!.harryPotterEdition, 5),
      ],
    );
  }

  Widget _editionOption(BuildContext context, String text, int version) {
    return SimpleDialogOption(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 40.0,
        height: 40.0,
        child: ElevatedButton(
          onPressed: () {
            Provider.of<AppSettings>(context, listen: false).changeVersion(version);
            Navigator.of(context).pop();
          },
          child: Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
