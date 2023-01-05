import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';

void main() => runZonedGuarded<Future<void>>(
      () async {
        runApp(const App());
      },
      (error, stackTrace) => log(
        'Top level exception',
        error: error,
        stackTrace: stackTrace,
        level: 1000,
        name: 'main',
      ),
    );

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) =>  MaterialApp(
        title: 'Material App',
        routes: {
          '/': (context) => const Home(),
          '/two': (context) => const ColumnTitleBars(),
        },
      );
}

class Home extends StatelessWidget {
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) =>
     Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: Center(
          child: TextButton(child: const Text('go to two'),onPressed: (){
Navigator.of(context).pushNamed('/two');
// Navigator.of(context). Named('/two');
          },),
        ),
      ),
    );
}



class ColumnTitleBars extends StatelessWidget {
  const ColumnTitleBars({super.key});
  final title = 'title';

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Expanded(
            child: Scaffold(
              appBar: AppBar(title: Text(title)),
            ),
          ),
          Expanded(
            child: Scaffold(
              appBar: AppBar(titleSpacing: 0, title: Text(title)),
            ),
          ),
          Expanded(
            child: Scaffold(
              appBar: AppBar(titleSpacing: 400, title: Text(title)),
            ),
          ),
          Expanded(
            child: Scaffold(
              appBar: AppBar(centerTitle: true, title: Text(title)),
            ),
          ),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.red,
                leading: const Icon(Icons.android),
                title: Text(title),
              ),
            ),
          ),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                leadingWidth: 8,
                backgroundColor: Colors.red,
                leading: const Icon(Icons.android),
                title: Text(title),
              ),
            ),
          ),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.red,
                leading: Transform.translate(
                  offset: const Offset(-15, 0),
                  child: const Icon(Icons.android),
                ),
                title: Text(title),
              ),
            ),
          ),
          /// --------   Amazing  --------------
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.green,
                titleSpacing: 0,
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Icon(Icons.person),
                      Text('title awesome'),
                      Icon(Icons.close),
                    ]),
              ),
            ),
          ),
        Expanded(
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.green,
                titleSpacing: 0,
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Icon(Icons.person),
                      Text('title awesome'),
                      Icon(Icons.close),
                    ]),
              ),
            ),
          ),
        ],
      );
}
