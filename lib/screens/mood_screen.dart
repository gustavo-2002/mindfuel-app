import 'package:flutter/material.dart';
import '../screens/advice_screen.dart';
import '../widgets/mood_selector.dart';
import '../widgets/custom_button.dart';

class MoodScreen extends StatefulWidget {
  const MoodScreen({super.key});

  @override
  _MoodScreenState createState() => _MoodScreenState();
}

class _MoodScreenState extends State<MoodScreen> {
  String selectedMood = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MindFuel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            const Text(
              'Como está o seu humor hoje?',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: MoodSelector(
                  onSelect: (mood) {
                    setState(() {
                      selectedMood = mood;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            CustomButton(
              text: 'Pegar dica do dia',
              onPressed: () {
                if (selectedMood.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdviceScreen(mood: selectedMood),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Por favor, escolha um humor antes de continuar.'),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}