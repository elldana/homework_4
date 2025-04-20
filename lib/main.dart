import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget buildBlock({
    required Color color,
    required double size,
    required String text,
  }) {
    return Container(
      color: color,
      padding: const EdgeInsets.all(20),
      width: size,
      height: size,
      alignment: Alignment.center,
      child: Text(text, style: TextStyle(color: Colors.black, fontSize: 12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Screen of My apl'),
          backgroundColor: const Color.fromARGB(255, 72, 171, 252),
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(255, 187, 232, 251),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildBlock(color: Colors.red.shade300, size: 60, text: '1'),
                buildBlock(color: Colors.yellow.shade400, size: 80, text: '2'),
                buildBlock(color: Colors.green.shade500, size: 100, text: '3'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildBlock(color: Colors.red.shade300, size: 60, text: '1'),
                buildBlock(color: Colors.yellow.shade400, size: 80, text: '2'),
                buildBlock(color: Colors.green.shade500, size: 100, text: '3'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildBlock(color: Colors.red.shade300, size: 60, text: '1'),
                buildBlock(color: Colors.yellow.shade400, size: 80, text: '2'),
                buildBlock(color: Colors.green.shade500, size: 100, text: '3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}