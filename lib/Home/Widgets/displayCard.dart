import 'package:flutter/material.dart';

class DisplayCard extends StatelessWidget {
  final String titleText;
  final String displayText;
  final int cardType;
  DisplayCard(this.titleText, this.displayText, this.cardType);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 2.5,
      width: MediaQuery.of(context).size.width / 2.2,
      child: Card(
        color: cardType == 1
            ? Colors.lightBlue.shade50
            : cardType == 2
                ? Colors.purple.shade50
                : cardType == 3
                    ? Colors.green.shade200
                    : cardType == 4
                        ? Colors.red.shade200
                        : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                titleText,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              Divider(
                thickness: 1,
              ),
              Text(
                displayText,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
