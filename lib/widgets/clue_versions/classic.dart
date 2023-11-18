import "package:clue_notepad/imports.dart";

class NotepadClassic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ktoArrayClassic = ['Green', 'Mustard', 'White', 'Peacock', 'Plum', 'Scarlett'];

    final czymArrayClassic = [
      context.l10n?.candlestick,
      context.l10n?.dagger,
      context.l10n?.leadPipe,
      context.l10n?.revolver,
      context.l10n?.rope,
      context.l10n?.wrench
    ];
    final gdzieArrayClassic = [
      context.l10n?.lounge,
      context.l10n?.cellar,
      context.l10n?.billiardRoom,
      context.l10n?.conservatory,
      context.l10n?.diningRoom,
      context.l10n?.hall,
      context.l10n?.kitchen,
      context.l10n?.library,
      context.l10n?.ballroom,
      context.l10n?.study
    ];

        return Notepad(
      2, 
      ktoArray: ktoArrayClassic,
      czymArray: czymArrayClassic,
      gdzieArray: gdzieArrayClassic,
    );
  }
}
