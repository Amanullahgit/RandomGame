import 'dart:async';
import 'dart:math';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class GameModel extends ChangeNotifier {
  String _messageOne = 'Lets Begin!';
  String _messageTwo = 'Attempts: 0';
  int _currentSecond = 0;
  int _randomNumber = 0;
  int _score = 0, _prevScore = 0;
  int _attempts = 0;
  int _duration = 5;
  bool _isFirstTime = true;
  Timer? _timer;
  final CountDownController _controller = CountDownController();

  String get messageOne => _messageOne;
  String get messageTwo => _messageTwo;
  int get currentSecond => _currentSecond;
  int get randomNumber => _randomNumber;
  int get score => _score;
  int get prevScore => _prevScore;
  int get attempts => _attempts;
  int get duration => _duration;
  bool get isFirstTime => _isFirstTime;
  Timer? get timer => _timer;
  CountDownController get controller => _controller;

  void resetGame() {
    _messageOne = 'Lets Begin!';
    _messageTwo = 'Attempts: 0';
    _currentSecond = 0;
    _randomNumber = 0;
    _score = 0;
    _prevScore = 0;
    _attempts = 0;
    _duration = 5;

    _controller.restart(duration: _duration);
    _controller.pause();

    _isFirstTime = true;
    notifyListeners();
  }

  void startGame() {
    _currentSecond = DateTime.now().second;
    generateRandomNumber();
    _score = 0;
    _attempts = 0;
    startTimer();
    _controller.start();
    _messageOne = 'Game Started!';
    _isFirstTime = false;
    notifyListeners();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      _currentSecond = DateTime.now().second;
      notifyListeners();
    });
  }

  void generateRandomNumber() {
    final random = Random();
    _randomNumber = random.nextInt(60);
    notifyListeners();
  }

  void checkResult() {
    _attempts++;
    if (_currentSecond == _randomNumber) {
      _prevScore = _score;
      _score++;
      _messageOne = 'Success :)';
      _messageTwo = 'Score: $_score / $_attempts';
    } else {
      _prevScore = _score;
      _messageOne = 'Sorry try Again!';
      _messageTwo = 'Attempts: $_attempts';
    }

    generateRandomNumber();
    _controller.restart(duration: _duration);
    _isFirstTime = false;
    notifyListeners();
  }

  void timeoutResult() {
    _messageOne = "Sorry! timeout";
    _attempts++;
    _messageTwo = 'Attempts: $_attempts';
    _isFirstTime = false;
    _prevScore = _score;
    _controller.restart(duration: _duration);
    notifyListeners();
  }
}
