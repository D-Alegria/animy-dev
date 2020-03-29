import 'package:animy/presentation/pages/AnimyPage.dart';
import 'package:animy/presentation/pages/FriendsPage.dart';
import 'package:animy/presentation/widgets/menu_option_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  PageController controller = PageController(initialPage: 0, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Chats"),
        actions: <Widget>[
          menuPopUp(context),
        ],
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        onPageChanged: (int index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
        controller: controller,
        children: <Widget>[
          FriendPage(),
          AnimyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).appBarTheme.color,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.people,
              color: Theme.of(context).iconTheme.color,
            ),
            icon: Icon(
              Icons.people,
              color: Theme.of(context).accentIconTheme.color,
            ),
            title: Text(
              "Friends",
              style: TextStyle(
                color: Theme.of(context).appBarTheme.textTheme.caption.color,
              ),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.question_answer,
              color: Theme.of(context).iconTheme.color,
            ),
            icon: Icon(
              Icons.question_answer,
              color: Theme.of(context).accentIconTheme.color,
            ),
            title: Text(
              "Animies",
              style: TextStyle(
                color: Theme.of(context).appBarTheme.textTheme.caption.color,
              ),
            ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(
            () {
              _currentIndex = index;
              controller.animateToPage(
                index,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
          );
        },
      ),
    );
  }
}
