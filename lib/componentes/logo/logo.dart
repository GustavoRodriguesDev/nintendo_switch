import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double size;
  final Color colors;
  const Logo({required this.size, Key? key, required this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath(
        clipper: MyCustonClipper(),
        child: Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size * 0.23), color: colors),
        ),
      ),
    );
  }
}

class MyCustonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //retangulo do meio
    final centroRetangulo = Offset(
      size.width * 0.52,
      size.height * 0.5,
    );
    final retangulo = Rect.fromCenter(
      center: centroRetangulo,
      width: size.width * 0.07,
      height: size.height * 1,
    );

    //ciculo da direita
    final centroCirculoRight = Offset(
      size.width * 0.78,
      size.height * 0.55,
    );
    final circuloRight = Rect.fromCenter(
        center: centroCirculoRight,
        width: size.width * 0.18,
        height: size.height * 0.18);
    //retangulo da esquerda
    double radius = size.width * 0.16;
    final retanguloLeftInside = RRect.fromLTRBAndCorners(size.width * 0.07,
        size.height * 0.07, size.width * 0.41, size.height * 0.92,
        topLeft: Radius.circular(radius), bottomLeft: Radius.circular(radius));

    //ciculo da esquerda

    final centroCirculoLeft = Offset(size.width * 0.24, size.height * 0.30);
    final circuloLeft = Rect.fromCenter(
        center: centroCirculoLeft,
        width: size.width * 0.18,
        height: size.height * 0.18);

// camionho onde o desenho é realizado
    Path path = Path()
          ..moveTo(0.0, 0.0)
          ..lineTo(0, size.height)
          ..lineTo(size.width, size.height)
          ..lineTo(size.width, 0)
          ..addRRect(retanguloLeftInside)
          ..addRect(retangulo)
          ..addOval(circuloRight)
          ..addOval(circuloLeft)

        //
        ;

    // ..lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
