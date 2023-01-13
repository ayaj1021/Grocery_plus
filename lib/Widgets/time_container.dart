import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';

class TimeContainer extends StatefulWidget {
  final String text;
  const TimeContainer({super.key, required this.text});

  @override
  State<TimeContainer> createState() => _TimeContainerState();
}

class _TimeContainerState extends State<TimeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.grey.shade200,
      ),
      child: Center(
          child: Text(
        widget.text,
        style: Styles.headLineStyle6,
      )),
    );
  }
}

class TimeContainerSection extends StatelessWidget {
  const TimeContainerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            TimeContainer(text: '8AM - 11AM'),
            TimeContainer(text: '11AM - 12AM'),
            TimeContainer(text: '12PM - 2PM'),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            TimeContainer(text: '2PM - 4PM'),
            TimeContainer(text: '4PM - 6PM'),
            TimeContainer(text: '6PM - 8PM'),
          ],
        ),
      ],
    );
  }
}
