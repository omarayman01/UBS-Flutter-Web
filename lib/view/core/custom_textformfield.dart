import 'package:flutter/material.dart';
import 'package:ubs/view/constants/app_theme.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.labelText,
      this.onChanged,
      this.controller,
      this.isPassword,
      this.suffixIcon,
      this.keyboardType,
      this.validator,
      required this.radius,
      this.hintText,
      this.padding,
      this.hor = 25,
      this.vert = 15,
      required this.color,
      this.lines = 1});
  final TextInputType? keyboardType;
  final double radius;
  final Color color;
  final bool? padding;
  final double? hor, vert;
  final int? lines;
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final bool? isPassword;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hor!, vertical: vert!),
      child: TextFormField(
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: AppTheme.primary),
        obscureText: isPassword ?? false,
        maxLines: lines,
        obscuringCharacter: '*',
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        validator: validator,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide.none,
            ),
            labelText: labelText,
            hintText: hintText,
            suffixIcon: suffixIcon,
            fillColor: color,
            filled: true,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppTheme.primary),
            labelStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppTheme.primary)),
      ),
    );
  }
}
