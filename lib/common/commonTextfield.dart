import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colorcontrant.dart';

class CustomField extends StatelessWidget {
  TextInputType? keyboardType;
  String ?labelText;
  String? headingText;
  Color fillColor;
  Widget? prefix;
  Widget? prefixIcon;
  Widget? suffix;
  int? maxLines;
  bool? enable;
  int? maxLength;
  bool? obscureText;
  void Function()? onTap;
  TextCapitalization? textCapitalization;
  List<TextInputFormatter>? inputFormatters;
  String? Function(String?)? validator;
  TextEditingController? controller = TextEditingController();
  void Function(String?)? onSaved;
  void Function(String?)? onChange;
  CustomField(
      {this.obscureText,
        this.textCapitalization,
        this.validator,
        this.prefix,
        this.suffix,
        this.prefixIcon,
        this.onTap,
        this.inputFormatters,
        required this.fillColor,
        this.controller,
        this.labelText,
        this.onSaved,
        this.onChange,
        this.headingText,
        this.keyboardType = TextInputType.multiline,
        this.maxLines,
        this.enable,
        this.maxLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(headingText ?? "",style: AppStyles.gray16Text,),
        TextFormField(
          textInputAction: TextInputAction.newline,
          inputFormatters: inputFormatters,
          maxLength: maxLength,
          cursorWidth: 1,
          validator: validator,
          onChanged: onChange,
          enabled: enable,
          obscureText: obscureText ?? false,
          maxLines: maxLines,
          keyboardType: keyboardType,
          controller: controller,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          onSaved: onSaved,
          style: const TextStyle(
            color: ColorConstants.blackColor,
          ),
          decoration: InputDecoration(
            counterText: "",
            alignLabelWithHint: true,
            prefix: prefix,
            prefixIcon: prefixIcon,
            suffixIcon: suffix,
            fillColor: fillColor,
            filled: true,
            hintText: labelText,
            // hintStyle: AppTextStyle.hintStyle,
            errorStyle: TextStyle(
              color: Colors.red,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: ColorConstants.textFieldColor.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderSide:
              BorderSide(color: ColorConstants.textFieldColor.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: ColorConstants.textFieldColor.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: ColorConstants.textFieldColor.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(5),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: ColorConstants.textFieldColor.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: ColorConstants.textFieldColor.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onTap: onTap,
        ),
      ],
    );
  }
}
