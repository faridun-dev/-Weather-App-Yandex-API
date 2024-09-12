import 'package:flutter/material.dart';

class WeatherCard extends StatefulWidget {
  final String hour;
  final String temp;
  final String condition;
  final IconData conditionIcon;
  final Color conditionIconColor;
  const WeatherCard({
    super.key,
    required this.hour,
    required this.temp,
    required this.condition,
    required this.conditionIcon,
    required this.conditionIconColor,
  });

  @override
  State<WeatherCard> createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Container(
        padding: const EdgeInsets.all(
          20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white38,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.hour,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                const Spacer(),
                Text(
                  widget.temp,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  widget.condition,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  widget.conditionIcon,
                  color: widget.conditionIconColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
