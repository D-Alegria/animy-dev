import 'package:animy/presentation/pages/MainPage.dart';
import 'package:animy/utils/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() =>
    runApp(
      ChangeNotifierProvider(
        create: (_) => ThemeConfig(isLightTheme: false),
        child: AnimyApp(),
      ),
    );

class AnimyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeConfig = Provider.of<ThemeConfig>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Animy",
        themeMode: ThemeMode.system,
        theme: themeConfig.getThemeData,
        home: MainPage(),
    );
  }
}

