import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class CircularTimer extends StatelessWidget {
  final int _duration;
  final CountDownController _controller;
  final Function timoutResult;
  CircularTimer(
    this._duration,
    this._controller,
    this.timoutResult,
  );

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: _duration,
      initialDuration: 0,
      controller: _controller,
      width: MediaQuery.of(context).size.width / 2.5,
      height: MediaQuery.of(context).size.width / 2.5,
      ringColor: Colors.grey[300]!,
      ringGradient: null,
      fillColor: Color.fromARGB(255, 1, 140, 10)!,
      fillGradient: null,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      backgroundGradient: null,
      strokeWidth: 6,
      strokeCap: StrokeCap.round,
      textStyle: const TextStyle(
        fontSize: 24,
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
      textFormat: CountdownTextFormat.S,
      isReverse: true,
      isReverseAnimation: false,
      isTimerTextShown: true,
      autoStart: false,
      onStart: () {
        debugPrint('Countdown Started');
      },
      onComplete: () {
        timoutResult();
      },
      onChange: (String timeStamp) {
        debugPrint('Countdown Changed $timeStamp');
      },
      timeFormatterFunction: (defaultFormatterFunction, duration) {
        return Function.apply(defaultFormatterFunction, [duration]);
      },
    );
  }
}
