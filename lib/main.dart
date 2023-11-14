import 'package:cric_score/screen/home_screen.dart';
import 'package:cric_score/service/cricket_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiProvider(  providers: [
        ChangeNotifierProvider(create: (context){
          return CricketProvider();
        })
      ],
      child: const HomeScreen(),),
    );
  }
}

