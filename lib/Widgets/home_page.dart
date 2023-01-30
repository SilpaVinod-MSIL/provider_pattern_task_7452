import 'package:flutter/material.dart';
import '../provider/increment_provider.dart';
import 'package:provider/provider.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter= Provider.of<Counter>(context);
    final count=counter.getCounter;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Pattern"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Count of Pushing the Floating action button is :',
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}