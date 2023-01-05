import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _items = ['Account', 'Call', 'Camera'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Dropdown button')),
        body: Center(
            child: PopupMenuButton(
          icon: const Icon(Icons.menu),
          itemBuilder: (context) {
            return _items.map((item) {
              return PopupMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList();
          },
          onSelected: (item) {
            print(item);
          },
        )));
  }
}
