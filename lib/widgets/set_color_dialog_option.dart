import 'package:clue_notepad/models/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SetColorDialogOption extends StatelessWidget {
  const SetColorDialogOption({
    required this.theme,
    required this.buttonColor,
    required this.buttonText,
  });

  final ThemeData theme;
  final Color buttonColor;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: theme,
      child: SimpleDialogOption(
        padding: const EdgeInsets.all(4.0),
        child: SizedBox(
          width: 40.0,
          height: 40.0,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 3,
                backgroundColor: buttonColor,
              ),
              onPressed: () {
                context.read<AppSettings>().changeTheme(theme);
                Navigator.of(context).pop();
              },
              child: Text(
                buttonText,
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              )),
        ),
      ),
    );
  }
}
