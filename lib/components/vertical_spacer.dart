import 'package:flutter/cupertino.dart';

class VerticalSpacer extends StatelessWidget {
  final double height;

  VerticalSpacer(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
    );
  }
}
