import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.teal,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'FEATURED',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(
                  'FEATURED',
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(
                  'CRICBUZZ PLUS',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),

    );
  }
}
