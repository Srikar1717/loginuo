import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'font_styles.dart';
import 'my_colors.dart';


class MyTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved, change;
  final Function()? obscure;
  final bool isEmail, enable, isObsure;
  final int? number;
  final Size size;
  final IconData? icon;
  final Color? txtcolor;
  final Color bgcolor;
  final TextEditingController? controller;

  const MyTextFormField({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.validator,
    this.onSaved,
    this.number,
    required this.bgcolor,
    this.icon,
    this.txtcolor,
    required this.size,
    this.isEmail = false,
    this.enable = true,
    this.isObsure = false,
    this.obscure,
    this.controller,
    this.change,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: h6.copyWith(color: black.withOpacity(0.5)),
          ),
          const SizedBox(height: 5),
          TextFormField(
            enabled: enable,
            controller: controller,
            onChanged: change,
            style: h5.copyWith(
              color: black,
              fontWeight: FontWeight.bold,
              letterSpacing: 4,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: h5.copyWith(
                color: black.withOpacity(
                  .2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: white,
                  width: 1,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: white,
                  width: 1,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: red,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: blue,
                  width: 1,
                ),
              ),
              filled: true,
              fillColor: bgcolor,
              prefixIcon: Icon(
                icon,
              ),
              suffix: obscure != null
                  ? GestureDetector(
                      onTap: obscure,
                      child:  Icon(
                        isObsure ?Icons.visibility : Icons.visibility_off,
                        size: 20,
                      ),
                    )
                  : null,
            ),
            obscureText: isObsure,
            obscuringCharacter: '*',
            validator: validator,
            onSaved: onSaved,
            keyboardType: isEmail ? TextInputType.phone : TextInputType.text,
            inputFormatters: isEmail
                ? <TextInputFormatter>[
                    LengthLimitingTextInputFormatter(number),
                    FilteringTextInputFormatter.singleLineFormatter,
                  ]
                : null,
          ),
        ],
      ),
    );
  }
}
