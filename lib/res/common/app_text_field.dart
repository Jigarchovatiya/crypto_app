import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final String? label;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final bool readOnly;
  final ValueChanged<String>? onChanged;
  final bool enableInteractiveSelection;
  final GestureTapCallback? onTap;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? errorBorder;
  final int maxLines;
  final EdgeInsetsGeometry margin;
  final bool autofocus;

  const AppTextField({
    Key? key,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.label,
    this.inputFormatters,
    this.validator,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.enableInteractiveSelection = true,
    this.enabledBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.errorBorder,
    this.maxLines = 1,
    this.margin = const EdgeInsets.only(top: 8, bottom: 8, right: 20),
    this.autofocus = false,
    this.onChanged,
    this.hintText,
    this.suffixIcon,
    this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      autofocus: false,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.blue, width: 2),
        ),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(15)),
        isDense: true,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF8C8A87),
        ),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  // static OutlineInputBorder appOutlineInputBorder({Color? color}) => OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(10),
  //       borderSide: BorderSide(color: color ?? AppColor.textFieldColor, width: 1),
  //     );
}
