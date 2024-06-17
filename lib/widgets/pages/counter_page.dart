import 'package:flutter/material.dart';
import 'package:learn_provider/providers/count_provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '${context.watch<CountProvider>().count}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Row(
            children: [
              FloatingActionButton(
                onPressed: (() => context.read<CountProvider>().incrementCounter()),
                tooltip: 'Increment',
                heroTag: 0,
                child: const Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}