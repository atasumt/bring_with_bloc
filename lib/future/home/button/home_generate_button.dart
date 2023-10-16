import 'package:brinch_with_bloc/core/extension/media_quary_extension.dart';
import 'package:brinch_with_bloc/core/widget/button/global_elevated_button.dart';
import 'package:flutter/material.dart';

class HomeGenerateButton extends StatelessWidget {
  const HomeGenerateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalElevatedButton(
      text: 'Generate',
      width: context.width,
      onPressed: () {},
    );
  }
}
