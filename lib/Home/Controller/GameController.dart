import 'package:random_quiz/Home/Model/GameModel.dart';

class GameController {
  late GameModel _model;

  GameController() {
    _model = GameModel();
  }

  GameModel get model => _model;

  void resetGame() {
    _model.resetGame();
  }

  void startGame() {
    _model.startGame();
  }

  void checkResult() {
    _model.checkResult();
  }

  void timeoutResult() {
    _model.timeoutResult();
  }
}
