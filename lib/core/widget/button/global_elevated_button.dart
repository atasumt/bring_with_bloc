// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:brinch_with_bloc/core/widget/design/const_design.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class GlobalElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final ButtonStyle? style;
  final TextStyle? textStyle;
  final bool enabled;
  final double? width;
  final double? height;
  final Widget? icon;
  final Widget? trailingIcon;
  final String text;
  final bool expand;
  final MainAxisAlignment mainAxisAlignment;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;
  final Widget? custom;
  const GlobalElevatedButton({
    Key? key,
    required this.onPressed,
    this.style,
    this.textStyle,
    this.enabled = true,
    this.width,
    this.height,
    this.icon,
    this.trailingIcon,
    this.text = "",
    this.expand = false,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.padding = const EdgeInsets.only(top: kDefaultPadding),
    this.alignment = Alignment.center,
    this.custom,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding,
        child: Align(
          alignment: alignment,
          child: ElevatedButton(
              onPressed: enabled ? onPressed : null,
              style: style,
              child: SizedBox(
                  width: width,
                  height: height ?? 50,
                  child: custom ??
                      Row(
                        mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
                        mainAxisAlignment: mainAxisAlignment,
                        children: [
                          icon ?? const SizedBox(),
                          if (text != "" &&
                              icon != null &&
                              // dont add left padding if space between is selected.
                              mainAxisAlignment != MainAxisAlignment.spaceBetween) ...[
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                          Text(
                            text.tr(),
                            style: textStyle ?? Theme.of(context).textTheme.labelLarge,
                          ),
                          if (trailingIcon != null &&
                              // dont add left padding if space between is selected.
                              mainAxisAlignment != MainAxisAlignment.spaceBetween) ...[
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                          trailingIcon ?? const SizedBox(),
                        ],
                      ))),
        ));
  }
}
