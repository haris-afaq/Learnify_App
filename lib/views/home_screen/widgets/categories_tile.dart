import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesTile extends StatelessWidget {
  final String svgPath; 

  const CategoriesTile({
    super.key,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      height: 82,
      width: 82,
    );
  }
}
