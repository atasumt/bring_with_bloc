// ignore_for_file: avoid_dynamic_calls

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// This handles what should be returned on awaited future error.
Widget generalErrorHandler(BuildContext context) {
  return Text(
    "error.unknown".tr(),
    style: Theme.of(context).textTheme.titleSmall,
  );
}
