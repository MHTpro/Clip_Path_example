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
          child: ClipPath(
            clipper: MyClipper(),
            child: Container(
              alignment: Alignment.center,
              height: 190.0,
              width: 340.0,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Text(
                "This is ClipPath\n",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0.0, 190.0);
    path.addArc(
      Rect.fromCenter(
        center: const Offset(10.0, 100.0),
        width: 90.0,
        height: 300.0,
      ),
      10.0,
      200,
    );
    path.lineTo(100000.0, 0.0);
    path.addOval(
      Rect.fromPoints(
        const Offset(150.0, 160.0),
        const Offset(200.0, 100.0),
      ),
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
