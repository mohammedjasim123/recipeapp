import 'package:flutter/material.dart';

class SeearchBarWidget extends StatefulWidget {
  const SeearchBarWidget({super.key});

  @override
  State<SeearchBarWidget> createState() => _SeearchBarWidgetState();
}

class _SeearchBarWidgetState extends State<SeearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Color.fromARGB(26, 235, 231, 231)

      ),
    );
  }
}