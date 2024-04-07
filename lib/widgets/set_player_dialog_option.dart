
import 'package:clue_notepad/models/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SetPlayersDialogOption extends StatelessWidget {
  const SetPlayersDialogOption(this.numberOfPlayers, {super.key});

  final int numberOfPlayers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 40.0,
        height: 40.0,
        child: ElevatedButton(
          child: Text('$numberOfPlayers'),
          onPressed: () {
            context.read<AppSettings>().setPlayersInitial(numberOfPlayers);
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
