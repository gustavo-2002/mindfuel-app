import 'package:flutter/material.dart';
import 'package:mindfuel/repository/advice_repository.dart';

class AdviceScreen extends StatelessWidget {
  final String mood;
  
  const AdviceScreen({super.key, required this.mood});

  @override
  Widget build(BuildContext context) {
    final String advice = AdviceRepository.getAdviceForMood(mood);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MindFuel'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Conselho do Dia:',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            Text(
              advice,
              style: const TextStyle(fontSize: 18.0),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}