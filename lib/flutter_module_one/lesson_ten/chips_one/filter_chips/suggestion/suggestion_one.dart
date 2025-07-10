import 'package:flutter/material.dart';
import 'package:flutter_learn/flutter_module_one/lesson_ten/chips_one/filter_chips/suggestion/helper/suggestion_helper.dart';

class SuggestionOne extends StatelessWidget {
  const SuggestionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SuggestionHelper(title: "Suggestion 1"),
      ),
    );
  }
}
