import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());
void main() => runApp(const MaterialApp(home: MyApp()));

void contactUs(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Contact US'),
          content: const Text('Mail us at hello@world.com'),
          actions: [
            TextButton(
              child: const Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello World Travel App"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  "Hello World Travel",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.ltr,
                ),
                const Text(
                  "Discover the World",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurpleAccent,
                  ),
                  textDirection: TextDirection.ltr,
                ),
                Image.network(
                  "https://media-cdn.tripadvisor.com/media/photo-s/0c/6a/e4/48/bukit-rindu-alam-tanjung.jpg",
                  height: 250,
                ),
                ElevatedButton(
                  child: const Text("Contact US"),
                  onPressed: () => contactUs(context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
