import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextInputCustom extends StatefulWidget {
  const TextInputCustom({
    super.key,
    required this.hintText,
    this.icon,
    this.isPassword = false,
    this.controller,
    this.onChanged,
    this.validator,
    this.isNumber = false,
    this.borderRadius = 30.0,
    this.backgroundColor = const Color(0xFFF9F9F9),
    this.cursorColor = Colors.red,
    this.iconColor = Colors.red,
    this.hintStyle = const TextStyle(color: Color(0xff8C8C8C), fontSize: 12),
    this.border,
    this.contentPadding,
    this.boxShadow,
    this.errorText,
    this.focusNode,
  });

  final String hintText;
  final String? icon;
  final bool? isPassword;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final bool? isNumber;
  final double borderRadius;
  final Color backgroundColor;
  final Color cursorColor;
  final Color iconColor;
  final TextStyle hintStyle;
  final InputBorder? border;
  final EdgeInsetsGeometry? contentPadding;
  final List<BoxShadow>? boxShadow;
  final String? errorText;
  final FocusNode? focusNode;

  @override
  State<TextInputCustom> createState() => _TextInputCustomState();
}

class _TextInputCustomState extends State<TextInputCustom> {
  bool _isPasswordVisible = false;

  List<TextInputFormatter>? _getInputFormatters() {
    if (widget.isNumber == true) {
      return [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
      ];
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: widget.errorText != null
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start, 
      children: [
        Container(
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(widget.borderRadius),
            boxShadow: widget.boxShadow,
          ),
          child: TextFormField(
            focusNode: widget.focusNode, 
            keyboardType: widget.isNumber! ? TextInputType.number : TextInputType.text,
            cursorColor: widget.cursorColor,
            inputFormatters: _getInputFormatters(),
            decoration: InputDecoration(
              prefixIcon: widget.icon != null
                  ? Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        widget.icon!,
                        height: 10,
                        width: 10,
                        colorFilter: ColorFilter.mode(widget.iconColor, BlendMode.srcIn),
                      ),
                    )
                  : null,
              suffixIcon: widget.isPassword == true
                  ? IconButton(
                      icon: Icon(
                        _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        color: widget.iconColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    )
                  : null,
              hintText: widget.hintText,
              hintStyle: widget.hintStyle,
              filled: true,
              fillColor: Colors.transparent,
              border: widget.border ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.borderRadius),
                    borderSide: BorderSide.none,
                  ),
              contentPadding: widget.contentPadding ?? const EdgeInsets.symmetric(horizontal: 16.0),
            ),
            obscureText: widget.isPassword == true && !_isPasswordVisible,
            controller: widget.controller,
            onChanged: widget.onChanged,
            validator: widget.validator,
          ),
        ),
        if (widget.errorText != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              widget.errorText!,
              style: const TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }
}