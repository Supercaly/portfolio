import 'package:flutter/material.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/responsive.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = Responsive.isLarge(context) ? 280.0 : 200.0;
    final offset = Responsive.isLarge(context) ? 40.0 : 20.0;

    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: offset,
              left: offset,
              width: size,
              height: size,
              child: CustomPaint(
                painter: CirclePainter(),
              )),
          ClipOval(
            child: Image.asset(
              "assets/images/profile_picture.jpg",
              height: size,
              width: size,
            ),
          ),
          Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              color: Color(0x661BB59E),
              shape: BoxShape.circle,
            ),
          )
        ],
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.secondary
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.height / 2,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
