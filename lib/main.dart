import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/simple.jpg'),
            const SizedBox(height: 20),
            Icon(
              Icons.safety_check,
              color: Colors.green[900],
              size: 50,
            ),
            ElevatedButton.icon(
                onPressed: (){
                  print('Pressed');
                },
                icon: Icon(
                  Icons.ads_click,
                ),
                label: Text(
                "Click me",
                style: TextStyle(
                  color: Colors.green[900],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
            ),
            ),
          ],
        )

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green[900],
        child: const Text(
            "Click",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "YouTube Tuto APP",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.green[900],
    );
  }

  // Required for custom AppBar widgets
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
