import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counters.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CounterAppState(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<CounterAppState>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text("provider for state managenment"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${state.i}",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  state.increment();
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 30),
                )),
            ElevatedButton(
                onPressed: () {
                  state.decrement();
                },
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}
