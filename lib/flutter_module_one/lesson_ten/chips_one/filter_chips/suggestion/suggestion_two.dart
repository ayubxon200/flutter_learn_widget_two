import 'package:flutter/material.dart';

import 'helper/suggestion_helper.dart';

class SuggestionTwo extends StatelessWidget {
  const SuggestionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SuggestionHelper(title: "Suggestion 2"),
      ),
    );
  }
}
