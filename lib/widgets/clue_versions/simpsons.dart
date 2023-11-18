import "package:clue_notepad/imports.dart";

class NotepadSimpsons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ktoArraySimpsons = ['Homer', 'Marge', 'Bart', 'Lisa', 'Maggie', 'Ned Flanders'];

    final czymArraySimpsons = [
      context.l10n?.donut,
      context.l10n?.slingshot,
      context.l10n?.saxophone,
      context.l10n?.tvRemote,
      context.l10n?.beehive,
      context.l10n?.bowlingBall,
      context.l10n?.krustyBurger
    ];

    final gdzieArraySimpsons = [
      context.l10n?.simpsonLivingRoom,
      context.l10n?.moesTavern,
      context.l10n?.kwikEMart,
      context.l10n?.springfieldElementarySchool,
      context.l10n?.springfieldNuclearPowerPlant,
      context.l10n?.flandersHouse,
      context.l10n?.krustyland
    ];

       return Notepad(
      2, 
      ktoArray: ktoArraySimpsons,
      czymArray: czymArraySimpsons,
      gdzieArray: gdzieArraySimpsons,
    );
  }
}
