import 'package:animy/presentation/pages/settings_page.dart';
import 'package:flutter/material.dart';

Widget menuPopUp(context) => PopupMenuButton(
      tooltip: "Menu",
      color: Theme.of(context).backgroundColor,
      onSelected: (int) {
        switch (int) {
          case 1:
            break;
          case 2:
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingsPage(),
              ),
            );
            break;
          default:
            break;
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text("Share Link"),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("Share app"),
        ),
        PopupMenuItem(
          value: 3,
          child: Text("Settings"),
        )
      ],
    );
