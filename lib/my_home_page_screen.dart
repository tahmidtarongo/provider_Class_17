import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/counter_provider.dart';

import 'Providers/counter_2_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // final providerData = Provider.of<Counter>(context);
    print('Build Calling');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<Counter2>(
              builder: (context, value, child) {
                return Text(
                  value.counter2.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: Consumer<Counter2>(builder: (context, value, __) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                value.plus();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                value.plus();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.refresh),
            ),
          ],
        );
      }), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
