import "package:flutter/material.dart";

class LabelAndTextFormField extends StatefulWidget {
  final String labelText;
  final String defaultText;

  LabelAndTextFormField({required this.labelText, required this.defaultText});

  @override
  _LabelAndTextFormFieldState createState() => _LabelAndTextFormFieldState();
}

class _LabelAndTextFormFieldState extends State<LabelAndTextFormField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.defaultText);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.labelText,
          style: TextStyle(color: Colors.white),
        ),
        Expanded(
            child: TextFormField(
          enabled: false,
          controller: _controller,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ))
      ],
    );
  }
}
