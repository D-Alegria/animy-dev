import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AnimyPage extends StatefulWidget {
  @override
  _AnimyPageState createState() => _AnimyPageState();
}

class _AnimyPageState extends State<AnimyPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          color: Theme.of(context).appBarTheme.color,
          child: Text(
            "Animies",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).appBarTheme.textTheme.caption.color,
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            reverse: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final formatter = new DateFormat('yyyy-MM-dd');
              String formatted = formatter.format(DateTime.now().toLocal());
              return ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 40,
                ),
//                title: Text("Wong Fei"),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                subtitle: Text("Hi! What's up?"),
                trailing: Text(formatted),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1,
                color: Theme.of(context).dividerColor,
                indent: 70,
                endIndent: 10,
              );
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
