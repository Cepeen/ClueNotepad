import 'package:clue_notepad/models/app_settings.dart';
import 'package:clue_notepad/tables.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SetColorDialogOption extends StatelessWidget {
  const SetColorDialogOption({required this.theme, super.key});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: theme,
      child: SimpleDialogOption(
        padding: const EdgeInsets.all(4.0),
        child: SizedBox(
          width: 40,
          height: 40,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 3,
              shape: RoundedRectangleBorder(),
            ),
            onPressed: () {
              context.read<AppSettings>().changeTheme(theme);
              Navigator.of(context).pop();
            },
            child: Text(context.l10n!.red),
          ),
        ),
      ),
    );
  }
}
