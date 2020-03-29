import 'package:animy/presentation/widgets/message_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wong Fei"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            onPressed: null,
          )
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: <Widget>[
          Expanded(child: ListView.builder(
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
            itemCount: 10,
          ),),
          inputBar(context),
        ],
      ),
    );
  }
}
