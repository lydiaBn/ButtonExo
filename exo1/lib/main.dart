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
            MaterialButton(
              color:
                  Color.fromARGB(255, 233, 144, 174), // set the color to pink
              onPressed: _increment,
              child: Text('Increment'),
            ),
            const SizedBox(height: 16),
            MaterialButton(
              color:
                  Color.fromARGB(255, 243, 169, 194), // set the color to pink
              onPressed: _decrement,
              child: Text('Decrement'),
            ),
            const SizedBox(height: 16),
            MaterialButton(
              color:
                  Color.fromARGB(255, 233, 144, 174), // set the color to pink
              onPressed: _SetToZero,
              child: Text('Set to Zero'),
            ),
            const SizedBox(height: 16),
            CounterDisplay(count: _counter),
          ],
        ),
      ],
    );
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
}
