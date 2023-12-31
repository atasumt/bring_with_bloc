import 'package:brinch_with_bloc/core/widget/design/const_design.dart';
import 'package:flutter/cupertino.dart';

class GlobalIndicatorWidget extends StatelessWidget {
  const GlobalIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: kCardColor.withOpacity(0.5),
        ),
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: CupertinoActivityIndicator(
            color: kTextColor,
            radius: 15,
          ),
        ),
      ),
    );
  }
}
