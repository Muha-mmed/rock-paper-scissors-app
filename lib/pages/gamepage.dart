import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rock_paper_scissor/widget/btn.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final List choices = ['Rock', 'Paper', 'Scissor'];
  String playerChoice = '';
  String computerChoice = '';
  String result = '';
  int playerScore = 0;
  int computerScore = 0;

  void playGame(String choice) {
    setState(() {
      playerChoice = choice;
      computerChoice = choices[Random().nextInt(choices.length)];
      result = determineWinner(playerChoice, computerChoice);
    });
  }

  void restart() {
    setState(() {
      computerScore = 0;
      playerScore = 0;
      playerChoice = '';
      computerChoice = '';
      result = '';
    });
  }

  String determineWinner(String playerChoice, String computerChoice) {
    if (playerChoice == computerChoice) {
      return "draw Game";
    } else if ((playerChoice == 'Rock' && computerChoice == 'Scissor') ||
        (playerChoice == 'Paper' && computerChoice == 'Rock') ||
        (playerChoice == 'Scissor' && computerChoice == 'Paper')) {
      playerScore++;
      return 'Player wins';
    } else {
      computerScore++;
      return 'Computer wins';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const FittedBox(
            child: Text(
              'ROCK PAPER SCISSORS',
              style: TextStyle(fontSize: 130),
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              const Center(
                  child: Text(
                'pick your weapon',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              )),
              const SizedBox(height: 40),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => playGame('Rock'),
                          child: Image.asset(
                            'assets/rock.webp',
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            height: MediaQuery.sizeOf(context).width * 0.2,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => playGame('Paper'),
                          child: Image.asset(
                            'assets/paper.png',
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            height: MediaQuery.sizeOf(context).width * 0.2,
                          ),
                        ),
                        GestureDetector(
                            onTap: () => playGame('Scissor'),
                            child: Image.asset(
                              'assets/scissors.png',
                              width: MediaQuery.sizeOf(context).width * 0.2,
                              height: MediaQuery.sizeOf(context).width * 0.2,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Player choice :",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              playerChoice,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Computer choice :",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              computerChoice,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      result,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => restart(),
                      child: Btn(
                          text: 'Restart',
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          height: MediaQuery.sizeOf(context).width * 0.1),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text('Player Score:'),
                      const SizedBox(
                        height: 8,
                      ),
                      Btn(
                          text: playerScore.toString(),
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          height: MediaQuery.sizeOf(context).width * 0.1),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('computer Score:'),
                      const SizedBox(
                        height: 8,
                      ),
                      Btn(
                          text: computerScore.toString(),
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          height: MediaQuery.sizeOf(context).width * 0.1),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}
