import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AmountFormCustom extends StatefulWidget {
  final TextStyle style;
  final List<TextInputFormatter> mask;
  final ValueChanged<String> onChanged;
  final String labelText;

  const AmountFormCustom({Key key,
    @required this.style,
    @required this.mask,
    @required this.onChanged,
    @required this.labelText
  }) : super(key: key);

  @override
  _AmountFormCustomState createState() => _AmountFormCustomState(this.style,
    this.mask,
    this.onChanged,
    this.labelText,
  );
}

class _AmountFormCustomState extends State<AmountFormCustom> {
  final TextStyle style;
  final List<TextInputFormatter> mask;
  final ValueChanged<String> onChanged;
  final String labelText;

  _AmountFormCustomState(this.style, this.mask, this.onChanged, this.labelText);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: style,
      inputFormatters: mask,
      onChanged: onChanged,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: style,
      ),
    );
  }
}