import 'package:flutter/material.dart';

import 'helper/suggestion_helper.dart';

class SuggestionThree extends StatelessWidget {
  const SuggestionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SuggestionHelper(title: "Suggestion 3"),
      ),
    );
  }
}
