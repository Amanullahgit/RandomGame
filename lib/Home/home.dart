import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_quiz/Home/Widgets/circularTimer.dart';
import 'package:random_quiz/Home/Widgets/customButton.dart';
import 'package:random_quiz/Home/Widgets/displayCard.dart';

import 'Controller/GameController.dart';
import 'Model/GameModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GameController _gameController;

  @override
  void initState() {
    super.initState();
    _gameController = GameController();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _gameController.model,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<GameModel>(
          builder: (context, gameModel, child) {
            return ListView(
              shrinkWrap: false,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DisplayCard("Current Second",
                        gameModel.currentSecond.toString(), 1),
                    DisplayCard(
                        "Random Number", gameModel.randomNumber.toString(), 2),
                  ],
                ),
                const SizedBox(height: 10),
                DisplayCard(
                    gameModel.messageOne,
                    gameModel.messageTwo,
                    (gameModel.isFirstTime || gameModel.attempts == 0)
                        ? 5
                        : gameModel.score > gameModel.prevScore
                            ? 3
                            : 4),
                const SizedBox(height: 30),
                CircularTimer(gameModel.duration, gameModel.controller,
                    _gameController.timeoutResult),
                const SizedBox(height: 30),
                CustomStartButton(
                    gameModel.isFirstTime ? "Start the Game" : "Attempt",
                    gameModel.isFirstTime
                        ? _gameController.startGame
                        : _gameController.checkResult),
                const SizedBox(height: 10),
                CustomStartButton("Reset", _gameController.resetGame),
                const SizedBox(height: 10),
              ],
            );
          },
        ),
      ),
    );
  }
}
