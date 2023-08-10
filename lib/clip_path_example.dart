import 'package:flutter/material.dart';

class ClipPathExample extends StatefulWidget {
  const ClipPathExample({super.key});

  @override
  State<ClipPathExample> createState() => _ClipPathExampleState();
}

class _ClipPathExampleState extends State<ClipPathExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Container(),
        ),
      ),
    );
  }
}
