import 'package:clue_notepad/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/game_type.dart';

class ChooseEditionDialog extends StatelessWidget {
  const ChooseEditionDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(textAlign: TextAlign.center, context.l10n!.choseEdition),
      children: <Widget>[
        GameTypeOption(type: GameType.hasbro),
        GameTypeOption(type: GameType.discoverSecret),
        GameTypeOption(type: GameType.classic),
        GameTypeOption(type: GameType.simpsons),
        GameTypeOption(type: GameType.harryPotter),
      ],
    );
  }
}

class GameTypeOption extends StatelessWidget {
  const GameTypeOption({required this.type, super.key});

  final GameType type;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 40.0,
        height: 40.0,
        child: ElevatedButton(
          onPressed: () {
            Provider.of<GameState>(context, listen: false).changeVersion(type);
            Navigator.of(context).pop();
          },
          child: Text(
            type.name(context),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
