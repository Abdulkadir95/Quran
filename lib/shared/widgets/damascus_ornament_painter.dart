import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

/// 🕌 Damascus ornament painter — draws geometric Islamic patterns
class DamascusOrnamentPainter extends CustomPainter {
  final bool isDark;
  final double opacity;

  const DamascusOrnamentPainter({this.isDark = false, this.opacity = 0.08});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.gold.withValues(alpha: opacity)
      ..strokeWidth = 0.8
      ..style = PaintingStyle.stroke;

    final double step = 60.0;
    final double halfStep = step / 2;

    for (double x = -step; x <= size.width + step; x += step) {
      for (double y = -step; y <= size.height + step; y += step) {
        _drawStarPattern(canvas, paint, Offset(x, y), halfStep);
        _drawStarPattern(
            canvas, paint, Offset(x + halfStep, y + halfStep), halfStep);
      }
    }
  }

  void _drawStarPattern(Canvas canvas, Paint paint, Offset center, double r) {
    final path = Path();
    for (int i = 0; i < 8; i++) {
      final angle = (i * math.pi / 4) - math.pi / 8;
      final outerR = r * 0.38;
      final innerR = r * 0.16;
      final outerPoint = Offset(
        center.dx + outerR * math.cos(angle),
        center.dy + outerR * math.sin(angle),
      );
      final innerAngle = angle + math.pi / 8;
      final innerPoint = Offset(
        center.dx + innerR * math.cos(innerAngle),
        center.dy + innerR * math.sin(innerAngle),
      );
      if (i == 0) {
        path.moveTo(outerPoint.dx, outerPoint.dy);
      } else {
        path.lineTo(innerPoint.dx, innerPoint.dy);
        path.lineTo(outerPoint.dx, outerPoint.dy);
      }
    }
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(DamascusOrnamentPainter old) =>
      old.isDark != isDark || old.opacity != opacity;
}

/// A widget that draws the Damascus ornament pattern as a background
class DamascusBackground extends StatelessWidget {
  final Widget child;
  final bool isDark;
  final double ornamentOpacity;

  const DamascusBackground({
    super.key,
    required this.child,
    this.isDark = false,
    this.ornamentOpacity = 0.06,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Gradient background
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: isDark ? AppColors.darkAppBarGradient : AppColors.creamGradient,
            ),
          ),
        ),
        // Ornament overlay
        Positioned.fill(
          child: CustomPaint(
            painter: DamascusOrnamentPainter(
              isDark: isDark,
              opacity: ornamentOpacity,
            ),
          ),
        ),
        // Top gold line
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 2,
            decoration: const BoxDecoration(gradient: AppColors.goldGradient),
          ),
        ),
        // Content
        child,
      ],
    );
  }
}
