import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How to Play'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Rock-Paper-Scissors!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Follow these simple steps to get started:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            const Text(
              '1. Choose your move: Rock, Paper, or Scissors.\n'
              '   - Rock crushes Scissors\n'
              '   - Scissors cuts Paper\n'
              '   - Paper covers Rock',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              '2. The computer will also make a move at the same time.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              '3. Compare your choice with the computer’s:',
              style: TextStyle(fontSize: 16),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                '- If your move beats the computer’s move, you win!\n'
                '- If the computer’s move beats your move, you lose.\n'
                '- If both moves are the same, it’s a tie.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '4. Try to win as many rounds as you can!',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Pro Tips:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                '- Stay unpredictable to outsmart the computer.\n'
                '- Aim for a balance of moves—don’t use the same move repeatedly.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Return to the main screen
                },
                child: const Text('Got it! Let’s Play'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
