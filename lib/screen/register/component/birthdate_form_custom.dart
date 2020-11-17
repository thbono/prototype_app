import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BirthdateFormCustom extends StatefulWidget {
  final TextStyle style;
  final List<TextInputFormatter> mask;
  final ValueChanged<String> onChanged;
  final String labelText;

  const BirthdateFormCustom({Key key,
    @required this.style,
    @required this.mask,
    @required this.onChanged,
    @required this.labelText
  }) : super(key: key);

  @override
  _BirthdateFormCustomState createState() => _BirthdateFormCustomState(this.style,
    this.mask,
    this.onChanged,
    this.labelText,
  );
}

class _BirthdateFormCustomState extends State<BirthdateFormCustom> {
  final TextStyle style;
  final List<TextInputFormatter> mask;
  final ValueChanged<String> onChanged;
  final String labelText;

  _BirthdateFormCustomState(this.style, this.mask, this.onChanged, this.labelText);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: style,
      inputFormatters: mask,
      onChanged: onChanged,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: style,
      ),
    );
  }
}