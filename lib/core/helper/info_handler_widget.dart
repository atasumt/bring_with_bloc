import 'package:brinch_with_bloc/core/common/global_modal_bottom_sheet.dart';
import 'package:brinch_with_bloc/core/extension/enums/error_status_enum.dart';
import 'package:brinch_with_bloc/core/extension/error_status_icon_extension.dart';
import 'package:brinch_with_bloc/core/extension/media_quary_extension.dart';
import 'package:brinch_with_bloc/core/widget/button/global_elevated_button.dart';
import 'package:brinch_with_bloc/core/widget/design/const_design.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

Future<dynamic> infoHandlerWidget(
  BuildContext context,
  String infoTitle,
  String infoBody,
  ErrorStatusEnum status, {
  bool buttonShow = false,
  String? routeName,
}) {
  return globalModalBottomSheet(
    isDismissible: buttonShow == true ? false : true,
    context: context,
    title: '',
    sheetHeight: context.height * 0.4,
    body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 61),
          FaIcon(
            status.stateToAssetPath(),
            color: status.stateToIconColor(),
            size: 96,
          ),
          const SizedBox(height: kFieldDefaultPadding),
          Text(
            infoTitle,
            style: Theme.of(context).textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: kFieldDefaultPadding),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultMostLargePadding, right: kDefaultMostLargePadding),
            child: Text(
              infoBody,
              style: Theme.of(context).textTheme.titleMedium!,
              textAlign: TextAlign.center,
            ),
          ),
          if (buttonShow == true) ...[
            Padding(
              padding: const EdgeInsets.only(left: kDefaultMostLargePadding, right: kDefaultMostLargePadding),
              child: GlobalElevatedButton(
                text: 'Tamam',
                width: context.width,
                onPressed: () {
                  if (routeName == null) {
                    Navigator.pop(context);
                  } else {
                    context.go(routeName);
                  }
                },
              ),
            ),
          ],
        ],
      ),
    ),
  );
}
