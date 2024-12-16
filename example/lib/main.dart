import 'package:flutter/material.dart';
import 'package:store_ohos/store_ohos.dart';

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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FilledButton(
            child: const Text("goStore"),
            onPressed: () async {
              // StoreOhos.goStore("C1142586279411547392");
              StoreOhos.goStore("com.wosai.shouqianba");
            },
          ),
        ),
      ),
    );
  }
}
