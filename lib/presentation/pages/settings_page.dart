import 'package:animy/utils/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeConfig = Provider.of<ThemeConfig>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          ListTile(
            title: Text("Theme"),
            trailing: Switch(
              value: themeConfig.isLightTheme,
              onChanged: (val) {
                themeConfig.setThemeData = val;
              },
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
