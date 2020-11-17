import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CpfFormCustom extends StatefulWidget {
  final TextStyle style;
  final List<TextInputFormatter> mask;
  final ValueChanged<String> onChanged;
  final String labelText;

  const CpfFormCustom({Key key,
    @required this.style,
    @required this.mask,
    @required this.onChanged,
    @required this.labelText
  })
      : super(key: key);

  @override
  _CpfFormCustomState createState() => _CpfFormCustomState(this.style,
    this.mask,
    this.onChanged,
    this.labelText,
  );
}

class _CpfFormCustomState extends State<CpfFormCustom> {
  final TextStyle style;
  final List<TextInputFormatter> mask;
  final ValueChanged<String> onChanged;
  final String labelText;

  _CpfFormCustomState(this.style, this.mask, this.onChanged, this.labelText);

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