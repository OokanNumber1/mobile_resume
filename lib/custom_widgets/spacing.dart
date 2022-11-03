import 'package:flutter/widgets.dart';

class Spacing extends SizedBox {
  final double height;
  final double width;
 
  const Spacing({required this.height,required this.width, super.key});
  factory Spacing.vertical(double height) => Spacing(height: height, width: 0);
  factory Spacing.horizontal(double width) => Spacing(height: 0, width: width);
}

class SpacingWidget extends StatelessWidget {
  const SpacingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
