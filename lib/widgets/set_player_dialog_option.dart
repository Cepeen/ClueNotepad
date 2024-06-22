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
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, 
            shape: CircleBorder(), 
          ),
          onPressed: () {
            context.read<GameState>().setPlayersInitial(numberOfPlayers);
            Navigator.of(context).pop();
          },
          child: Stack(
            children: [
              // Centered text
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '$numberOfPlayers',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black), // Text color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
