import 'package:flutter/material.dart';

class ContrastPageTwo extends StatefulWidget {
  const ContrastPageTwo({super.key});

  @override
  State<ContrastPageTwo> createState() => _ContrastPageTwoState();
}

class _ContrastPageTwoState extends State<ContrastPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("Contrast", style: TextStyle(fontSize: 20)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu, size: 25)),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "More? Oh yes. We've got the boring basics too",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Everything you'd expect, A to Z. Whether you're on expert or just getting starter.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),

          SizedBox(height: 20),

          Expanded(
            child: GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              children: [
                ContainerGridView(icon: Icons.mail_lock_sharp, text: "Branded emails'", color: Colors.greenAccent),
                ContainerGridView(icon: Icons.circle_rounded, text: "Brand kit'", color: Colors.green),
                ContainerGridView(icon: Icons.question_answer, text: "Q&A", color: Colors.white54),
                ContainerGridView(icon: Icons.mail, text: "Automated reminders", color: Colors.green),
                ContainerGridView(icon: Icons.accessibility, text: "Viewer engagement", color: Colors.white54),
                ContainerGridView(icon: Icons.ac_unit_rounded, text: "CRM integrations", color: Colors.purpleAccent),
                ContainerGridView(icon: Icons.menu, text: "Brand kit", color: Colors.purpleAccent),
                ContainerGridView(icon: Icons.circle_rounded, text: "Brand kit", color: Colors.greenAccent),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerGridView extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const ContainerGridView({
    required this.icon,
    required this.text,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 30),
            SizedBox(height: 4),
            Text(text, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
