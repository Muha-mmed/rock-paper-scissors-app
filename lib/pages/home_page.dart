import 'package:flutter/material.dart';
import 'package:rock_paper_scissor/widget/btn.dart';
import 'gamepage.dart';
import 'help.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 209, 174, 188),
          body: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Center(
                child: FittedBox(
                  child: Text(
                    'ROCK PAPER SCISSORS',
                    style: TextStyle(fontSize: 130),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const GamePage();
                      }),
                    );
                  },
                  child: Btn(
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    height: MediaQuery.sizeOf(context).width * 0.1,
                    text: 'P L A Y',
                  )),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return HelpPage();
                      }),
                    );
                  },
                  child: Btn(
                    text: 'H E L P',
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    height: MediaQuery.sizeOf(context).width * 0.1,
                  )),
              const Spacer(),
            ],
          )),
    );
  }
}
