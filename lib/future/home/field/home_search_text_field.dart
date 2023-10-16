import 'package:brinch_with_bloc/core/common/global_modal_bottom_sheet.dart';
import 'package:brinch_with_bloc/core/extension/media_quary_extension.dart';
import 'package:brinch_with_bloc/core/widget/design/const_design.dart';
import 'package:flutter/material.dart';

class HomeSearchTextField extends StatelessWidget {
  const HomeSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kFieldDefaultPadding),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: TextField(
          readOnly: true,
          decoration: const InputDecoration(
            hintText: 'Search',
            fillColor: kFieldColor,
            filled: true,
          ),
          onTap: () {
            globalModalBottomSheet(
                sheetHeight: context.height * 0.4,
                context: context,
                body: const Padding(
                  padding: EdgeInsets.only(bottom: kFieldDefaultPadding),
                  child: TextField(
                    autofocus: true,
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      fillColor: kFieldColor,
                      filled: true,
                    ),
                  ),
                ),
                title: '');
          },
        ),
      ),
    );
  }
}
