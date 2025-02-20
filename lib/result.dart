
/// result.dart
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  const ResultScreen({super.key, required this.bmi});

  String getBMICategory() {
    if (bmi < 18.5) return 'Underweight';
    if (bmi < 24.9) return 'Normal weight';
    if (bmi < 29.9) return 'Overweight';
    return 'Obese';
  }

  IconData getBMIIcon() {
    if (bmi < 18.5) return Icons.sentiment_dissatisfied;
    if (bmi < 24.9) return Icons.sentiment_satisfied;
    if (bmi < 29.9) return Icons.sentiment_neutral;
    return Icons.sentiment_very_dissatisfied;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Result')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(getBMIIcon(), size: 100, color: Colors.blueAccent),
            const SizedBox(height: 20),
            Text('Your BMI: ${bmi.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            Text('Category: ${getBMICategory()}',
                style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
