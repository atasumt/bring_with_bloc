import 'package:brinch_with_bloc/core/common/global_modal_bottom_sheet.dart';
import 'package:brinch_with_bloc/core/common/setting_page.dart';
import 'package:brinch_with_bloc/core/notifiers/bloc/bottom_nav_bar_notifier_bloc.dart';
import 'package:brinch_with_bloc/core/widget/design/const_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GlobalBottomNavigationBar extends StatelessWidget {
  const GlobalBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBarNotifierBloc(),
      child: BlocBuilder<BottomNavBarNotifierBloc, BottomNavBarNotifierState>(
        builder: (context, state) {
          return BottomNavigationBar(
            selectedItemColor: kSecondaryColor,
            onTap: (index) {
              BlocProvider.of<BottomNavBarNotifierBloc>(context).add(TabChange(tabIndex: index));
              if (index == 1) {
                globalModalBottomSheet(context: context, body: const SettingPage(), title: '');
              }
            },
            currentIndex: state.tabIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: FaIcon(FontAwesomeIcons.house, color: state.tabIndex == 0 ? kPrimaryColor : kBgColor),
                  ),
                  label: "Anasayfa"),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: FaIcon(
                      FontAwesomeIcons.gear,
                      color: state.tabIndex == 1 ? kPrimaryColor : kBgColor,
                    ),
                  ),
                  label: "Ayarlar"),
            ],
          );
        },
      ),
    );
  }
}
