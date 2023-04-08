import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({required this.count, super.key});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  const CounterIncrementor({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Increment'),
    );
  }
}

class CounterDecrementor extends StatelessWidget {
  const CounterDecrementor({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Decrement'),
    );
  }
}

class CounterSetToZero extends StatelessWidget {
  const CounterSetToZero({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Set to Zero'),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  void _decrement() {
    setState(() {
      --_counter;
    });
  }

  void _SetToZero() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 16),
            CounterIncrementor(onPressed: _increment),
            const SizedBox(height: 16),
            CounterDecrementor(onPressed: _decrement),
            const SizedBox(height: 16),
            CounterSetToZero(onPressed: _SetToZero),
            const SizedBox(height: 16),
            CounterDisplay(count: _counter),
          ],
        ),
      ],
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  );
}
