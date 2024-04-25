import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/game_type.dart';

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
          child: Text(textAlign: TextAlign.center, '$numberOfPlayers'),
          onPressed: () {
            context.read<GameState>().setPlayersInitial(numberOfPlayers);
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
