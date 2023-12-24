import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'User ID',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.check,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'ROBIN', // Replace with actual user name
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SmallButton(icon: Icons.speaker, label: 'Speaker'),
                      SmallButton(icon: Icons.lock, label: 'Password'),
                      SmallButton(icon: Icons.library_music, label: 'Recordings'),
                      SmallButton(icon: Icons.power_settings_new, label: 'Exit'),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Big Voice Recording Button covering 60-70% of the widget
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Add functionality for recording button
                      },
                      child: Icon(Icons.mic, size: 50),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SmallButton extends StatelessWidget {
  final IconData icon;
  final String label;

  SmallButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            // Add functionality for each small button
          },
          icon: Icon(icon),
        ),
        Text(label),
      ],
    );
  }
}
