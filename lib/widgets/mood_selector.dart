import 'package:flutter/material.dart';
import 'package:mindfuel/repository/mood_repository.dart';

class MoodSelector extends StatefulWidget {
  final Function(String) onSelect;

  const MoodSelector({super.key, required this.onSelect});

  @override
  _MoodSelectorState createState() => _MoodSelectorState();
}

class _MoodSelectorState extends State<MoodSelector> {
  String selectedMood = ''; 

  @override
  Widget build(BuildContext context) {
    List<String> moods = MoodRepository.getMoods();

    return DropdownButton<String>(
      value: selectedMood.isEmpty ? null : selectedMood,
      hint: const Text('Escolha um humor'),
      onChanged: (value) {
        setState(() {
          selectedMood = value!;
          widget.onSelect(selectedMood);
        });
      },
      items: moods.map((mood) {
        return DropdownMenuItem<String>(
          value: mood,
          child: Text(mood),
        );
      }).toList(),
      underline: Container (color: Colors.white),
    );
  }
}