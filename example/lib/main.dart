import 'package:flutter/material.dart';
import 'package:seeso_flutter/seeso_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final seesoFlutter = SeesoFlutter();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FutureBuilder<String?>(
            future: seesoFlutter.getPlatformVersion(),
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Text(snapshot.data ?? 'Unknown');
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
