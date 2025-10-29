import 'package:flutter/material.dart';
import 'package:flutter_app_youtube/main.dart';

void main() {
  runApp(MaterialApp(
      home: Home()
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: const Center(
        child: Text("Hello from main1.dart!"),
      ),
    );
  }
}
