import "package:clue_notepad/imports.dart";

class NotepadDiscover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ktoArrayDiscover = ['Green', 'Mustard', 'White', 'Peacock', 'Plum', 'Scarlett'];
    final czymArrayDiscover = [
      context.l10n?.candlestick,
      context.l10n?.axe,
      context.l10n?.poison,
      context.l10n?.trophy,
      context.l10n?.knife,
      context.l10n?.bat,
      context.l10n?.pistol,
      context.l10n?.rope,
      context.l10n?.dumbbell
    ];
    final gdzieArrayDiscover = [
      context.l10n?.guestHouse,
      context.l10n?.theatre,
      context.l10n?.spa,
      context.l10n?.diningRoom,
      context.l10n?.hall,
      context.l10n?.kitchen,
      context.l10n?.livingroom,
      context.l10n?.weranda,
      context.l10n?.observatory
    ];

        return Notepad(
      2, 
      ktoArray: ktoArrayDiscover,
      czymArray: czymArrayDiscover,
      gdzieArray: gdzieArrayDiscover,
    );
  }
}
