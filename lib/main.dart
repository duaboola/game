import 'package:flutter/material.dart';
import './screens/game.dart';
import './screens/game_setup.dart';
import 'modals/team.dart';
void main() => runApp(GameScoreApp());

class _GameScoreAppState extends State<GameScoreApp> {
  List<Team> _teams = [Team(name: "Devils"), Team(name: "Penguins")];

  void _setTeamName(Team t, String name) {
    setState(() {
      t.name = name;
    });
  }

  void _changeTeamScore(Team t, int newScore) {
    setState(() {
      t.score = newScore;
    });
  }

@override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => GameSetup(teams: _teams, setTeamName: _setTeamName,),
          "/game": (context) => Game(teams: _teams, changeTeamScore: _changeTeamScore)
    });
  }
}

class GameScoreApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GameScoreAppState();
  }
}