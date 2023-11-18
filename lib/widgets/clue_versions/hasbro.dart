import "package:clue_notepad/imports.dart";

class NotepadHasbro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ktoArrayHasbro = ['Green', 'Mustard', 'Orchid', 'Peacock', 'Plum', 'Scarlett'];

    final czymArrayHasbro = [
      context.l10n?.candlestick,
      context.l10n?.dagger,
      context.l10n?.leadPipe,
      context.l10n?.revolver,
      context.l10n?.rope,
      context.l10n?.wrench
    ];
    final gdzieArrayHasbro = [
      context.l10n?.lounge,
      context.l10n?.billiardRoom,
      context.l10n?.conservatory,
      context.l10n?.diningRoom,
      context.l10n?.hall,
      context.l10n?.kitchen,
      context.l10n?.library,
      context.l10n?.weranda,
      context.l10n?.study
    ];

    return Notepad(
      2,
      ktoArray: ktoArrayHasbro,
      czymArray: czymArrayHasbro,
      gdzieArray: gdzieArrayHasbro,
    );
  }
}
