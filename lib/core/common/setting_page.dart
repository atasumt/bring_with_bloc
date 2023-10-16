import 'package:brinch_with_bloc/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  final platform = const MethodChannel('platform_channel');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const FaIcon(FontAwesomeIcons.circleInfo),
          trailing: Assets.icons.arrowUpRight.svg(),
          title: Text(
            'Help',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const FaIcon(FontAwesomeIcons.star),
          trailing: Assets.icons.arrowUpRight.svg(),
          title: Text(
            'Rate Us',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const FaIcon(FontAwesomeIcons.arrowUpFromBracket),
          trailing: Assets.icons.arrowUpRight.svg(),
          title: Text(
            'Share with Friends',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const FaIcon(FontAwesomeIcons.scroll),
          trailing: Assets.icons.arrowUpRight.svg(),
          title: Text(
            'Terms of Use',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const FaIcon(FontAwesomeIcons.shield),
          trailing: Assets.icons.arrowUpRight.svg(),
          title: Text(
            'Privacy Policy',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const FaIcon(FontAwesomeIcons.github),
          trailing: FutureBuilder<String>(
            future: getAndroidVersion(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text('OS Version: ${snapshot.data}');
              } else {
                return Text('Loading...');
              }
            },
          ),
          title: Text(
            'OS Version',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 14),
          ),
          onTap: () {},
        ),
      ],
    );
  }

  Future<String> getAndroidVersion() async {
    String androidVersion;
    try {
      androidVersion = await platform.invokeMethod('getOSVersion');
    } on PlatformException {
      androidVersion = 'Failed to get OS version.';
    }
    return androidVersion;
  }
}
