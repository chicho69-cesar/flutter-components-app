import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key, this.hinText, this.labelText, 
    this.helperText, this.icon, this.suffixIcon, 
    this.textInputType, this.obscureText = false, 
    required this.formProperty, required this.formValues,
  }) : super(key: key);

  final String? hinText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? textInputType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      // initialValue: 'Cesar Villalobos Olmos',
      textCapitalization: TextCapitalization.words,
      keyboardType: textInputType,
      obscureText: obscureText,
      style: const TextStyle(fontSize: 18),
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Se requieren minimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hinText,
        labelText: labelText,
        helperText: helperText,
        // counterText: '3 caracteres',
        /* prefixIcon: Icon(
          Icons.supervised_user_circle_outlined
        ), */
        suffixIcon: suffixIcon == null ? null : Icon(
          suffixIcon,
          color: AppTheme.primary,
        ),
        icon: icon == null ? null : Icon(
          icon,
          color: AppTheme.primary,
        ),
        /* focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          )
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(5),
            bottomLeft: Radius.circular(10),
          ),
        ), */
      ),
    );
  }
}
