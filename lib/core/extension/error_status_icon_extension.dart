import 'package:brinch_with_bloc/core/extension/enums/error_status_enum.dart';
import 'package:brinch_with_bloc/core/widget/design/const_design.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

extension AdvertCardStateExtension on ErrorStatusEnum {
  IconData stateToAssetPath() {
    switch (this) {
      case ErrorStatusEnum.ERROR:
        return FontAwesomeIcons.solidCircleXmark;
      case ErrorStatusEnum.INFO:
        return FontAwesomeIcons.circleInfo;
      case ErrorStatusEnum.SUCCESS:
        return FontAwesomeIcons.solidCircleCheck;
    }
  }

  Color stateToIconColor() {
    switch (this) {
      case ErrorStatusEnum.ERROR:
        return kErrorColor;
      case ErrorStatusEnum.INFO:
        return kInfoColor;
      case ErrorStatusEnum.SUCCESS:
        return kFieldSuccessColor;
    }
  }
}
