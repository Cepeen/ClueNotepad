import "package:clue_notepad/imports.dart";

class NotepadHarryPotter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ktoArrayHarryPotter = [
      'Harry Potter',
      'Hermione Granger',
      'Ron Weasley',
      'Ginny Weasley',
      'Draco Malfoy',
      'Luna Lovegood',
      'Nymphadora Tonks'
    ];

    final czymArrayHarryPotter = [
      context.l10n?.wand,
      context.l10n?.broomstick,
      context.l10n?.potion,
      context.l10n?.spellbook,
      context.l10n?.cauldron,
      context.l10n?.invisibilityCloak,
      context.l10n?.timeTurner
    ];

    final gdzieArrayHarryPotter = [
      context.l10n?.gryffindorCommonRoom,
      context.l10n?.slytherinCommonRoom,
      context.l10n?.ravenclawCommonRoom,
      context.l10n?.hufflepuffCommonRoom,
      context.l10n?.greatHall,
      context.l10n?.forbiddenForest,
      context.l10n?.whompingWillow,
      context.l10n?.roomOfRequirement
    ];

     return Notepad(
      2,  
      ktoArray: ktoArrayHarryPotter,
      czymArray: czymArrayHarryPotter,
      gdzieArray: gdzieArrayHarryPotter,
    );
  }
}
