import 'package:flutter/material.dart';
import 'package:flutter_im_demo/chat/message_data.dart';
import 'package:flutter_im_demo/chat/message_item.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MessagePageState();
  }
}

class MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (BuildContext context, int index) {
          return MessageItem(messageData[index]);
        },
      ),
    );
  }
}
