import 'package:clue_notepad/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';

class GameState extends ChangeNotifier {
  GameType _selectedVersion = GameType.classic;
  int _players = 2;
  DateTime _gameStartTime = DateTime.now();

  int get players => _players;
  GameType get selectedVersion => _selectedVersion;
  DateTime get gameStartTime => _gameStartTime;

  void changeVersion(GameType type) {
    _selectedVersion = type;
    _gameStartTime = DateTime.now();
    notifyListeners();
  }

  void setPlayersInitial(int i) {
    _players = i;
    _gameStartTime = DateTime.now();
    notifyListeners();
  }

  void resetGame() {
    _gameStartTime = DateTime.now();
    notifyListeners();
  }
}

enum GameType { classic, hasbro, discoverSecret, simpsons, harryPotter }

extension GameTypeExtension on GameType {
  String name(BuildContext context) {
    switch (this) {
      case GameType.classic:
        return context.l10n!.classic;
      case GameType.hasbro:
        return context.l10n!.hasbro;
      case GameType.discoverSecret:
        return context.l10n!.discover;
      case GameType.simpsons:
        return context.l10n!.theSimpsonsEdition;
      case GameType.harryPotter:
        return context.l10n!.harryPotterEdition;
    }
  }

  List<String> suspects(BuildContext context) {
    switch (this) {
      case GameType.hasbro:
        return ['Green', 'Mustard', 'Orchid', 'Peacock', 'Plum', 'Scarlett'];
      case GameType.discoverSecret:
        return ['Green', 'Mustard', 'White', 'Peacock', 'Plum', 'Scarlett'];
      case GameType.classic:
        return ['Green', 'Mustard', 'White', 'Peacock', 'Plum', 'Scarlett'];
      case GameType.simpsons:
        return ['Homer', 'Marge', 'Bart', 'Lisa', 'Maggie', 'Ned Flanders'];
      case GameType.harryPotter:
        return [
          'Harry Potter',
          'Hermione Granger',
          'Ron Weasley',
          'Ginny Weasley',
          'Draco Malfoy',
          'Luna Lovegood',
          'Nymphadora Tonks'
        ];
    }
  }

  List<String?> weapons(BuildContext context) {
    switch (this) {
      case GameType.hasbro:
        return [
          context.l10n?.candlestick,
          context.l10n?.dagger,
          context.l10n?.leadPipe,
          context.l10n?.revolver,
          context.l10n?.rope,
          context.l10n?.wrench
        ];
      case GameType.discoverSecret:
        return [
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
      case GameType.classic:
        return [
          context.l10n?.candlestick,
          context.l10n?.dagger,
          context.l10n?.leadPipe,
          context.l10n?.revolver,
          context.l10n?.rope,
          context.l10n?.wrench
        ];
      case GameType.simpsons:
        return [
          context.l10n?.donut,
          context.l10n?.slingshot,
          context.l10n?.saxophone,
          context.l10n?.tvRemote,
          context.l10n?.beehive,
          context.l10n?.bowlingBall,
          context.l10n?.krustyBurger
        ];
      case GameType.harryPotter:
        return [
          context.l10n?.wand,
          context.l10n?.broomstick,
          context.l10n?.potion,
          context.l10n?.spellbook,
          context.l10n?.cauldron,
          context.l10n?.invisibilityCloak,
          context.l10n?.timeTurner
        ];
    }
  }

  List<String?> places(BuildContext context) {
    switch (this) {
      case GameType.hasbro:
        return [
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
      case GameType.discoverSecret:
        return [
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
      case GameType.classic:
        return [
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
      case GameType.simpsons:
        return [
          context.l10n?.simpsonLivingRoom,
          context.l10n?.moesTavern,
          context.l10n?.kwikEMart,
          context.l10n?.springfieldElementarySchool,
          context.l10n?.springfieldNuclearPowerPlant,
          context.l10n?.flandersHouse,
          context.l10n?.krustyland
        ];
      case GameType.harryPotter:
        return [
          context.l10n?.gryffindorCommonRoom,
          context.l10n?.slytherinCommonRoom,
          context.l10n?.ravenclawCommonRoom,
          context.l10n?.hufflepuffCommonRoom,
          context.l10n?.greatHall,
          context.l10n?.forbiddenForest,
          context.l10n?.whompingWillow,
          context.l10n?.roomOfRequirement
        ];
    }
  }
}
