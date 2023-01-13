import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Providers/counter_provider.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';
import 'package:provider/provider.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<CounterProvider>(context).counter;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Provider.of<CounterProvider>(context, listen: false)
                .decrementCounter();
            // setState(() {
            //   decrementCounter();
            // });
          },
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(7)),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          ('$counter'),
          style: Styles.headLineStyle2,
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            Provider.of<CounterProvider>(context, listen: false)
                .incrementCounter();

            // setState(() {
            //   incrementCounter();
            // });
          },
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(7)),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
