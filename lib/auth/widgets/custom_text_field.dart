import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom({
    required this.textController,
    required this.hintText,
    required this.validator,
    required this.textInputType,
    this.obscureText,
    super.key,
  });

  /// The controller of [TextFormFieldCustom].
  final TextEditingController textController;

  /// The obscure of [TextFormFieldCustom].
  final bool? obscureText;

  /// The hint of [TextFormFieldCustom].
  final String hintText;

  /// The validator of [TextFormFieldCustom].
  final String? Function(String?)? validator;

  /// The validator of [TextFormFieldCustom].
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      child: TextFormField(
        keyboardType: textInputType,
        controller: textController,
        obscureText: obscureText ?? false,
        style: TextStyle(fontSize: 15.sp, color: Colors.black),
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.only(left: 14.sp, bottom: 6.sp, top: 8.sp),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(15.sp),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(20.sp),
          ),
          errorStyle: TextStyle(fontSize: 17, color: Colors.red[100]),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20.sp),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
