import 'package:brinch_with_bloc/core/widget/design/const_design.dart';
import 'package:flutter/material.dart';

AppBar globalAppBar(
    {Widget? title,
    Color backgroundColor = kCardColor,
    Color iconColor = kAppBarColor,
    Color backButtonColor = kAppBarColor,
    Widget? leading,
    List<Widget>? actions}) {
  return AppBar(
    title: title,
    leading: leading,
    centerTitle: true,
    elevation: 0,
    actions: actions,
    backgroundColor: backgroundColor,
    iconTheme: IconThemeData(color: iconColor),
  );
}
