import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NameFormCustom extends StatefulWidget {
  final TextStyle style;
  final List<TextInputFormatter> mask;
  final ValueChanged<String> onChanged;
  final String labelText;

  const NameFormCustom({Key key,
    @required this.style,
    @required this.mask,
    @required this.onChanged,
    @required this.labelText
  }) : super(key: key);

  @override
  _NameFormCustomState createState() => _NameFormCustomState(this.style,
    this.mask,
    this.onChanged,
    this.labelText,
  );
}

class _NameFormCustomState extends State<NameFormCustom> {
  final TextStyle style;
  final List<TextInputFormatter> mask;
  final ValueChanged<String> onChanged;
  final String labelText;

  _NameFormCustomState(this.style, this.mask, this.onChanged, this.labelText);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: style,
      inputFormatters: mask,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: style,
      ),
    );
  }
}
