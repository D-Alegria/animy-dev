import 'package:flutter/material.dart';

Widget roundedContainer(context) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Theme.of(context).appBarTheme.color,
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 8.0),
          Icon(Icons.insert_emoticon,
              size: 30.0, color: Theme.of(context).hintColor),
          SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: 'Type a message',
                hintStyle: TextStyle(fontStyle: FontStyle.italic),
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(Icons.attach_file,
              size: 30.0, color: Theme.of(context).hintColor),
          SizedBox(width: 8.0),
          Icon(Icons.camera_alt,
              size: 30.0, color: Theme.of(context).hintColor),
          SizedBox(width: 8.0),
        ],
      ),
    );

Widget inputBar(context) => Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: roundedContainer(context),
          ),
          SizedBox(
            width: 5.0,
          ),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              minRadius: 25,
              backgroundColor: Theme.of(context).appBarTheme.color,
              child: Icon(
                Icons.send,
                color: Theme.of(context).appBarTheme.iconTheme.color,
              ),
            ),
          ),
        ],
      ),
    );
