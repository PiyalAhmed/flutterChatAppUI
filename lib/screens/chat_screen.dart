import 'package:chatui/models/message_model.dart';
import 'package:chatui/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User? user;
  const ChatScreen({Key? key, this.user}) : super(key: key);
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
            color:
                isMe ? Theme.of(context).accentColor : const Color(0xfffffefee),
            borderRadius: const BorderRadius.all(Radius.circular(15.0))),
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
        margin: isMe
            ? const EdgeInsets.only(
                top: 8.0, left: 80.0, bottom: 8.0, right: 10.0)
            : const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.time,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(message.text,
                style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600)),
          ],
        ));
    if (isMe) {
      return msg;
    }
    return Row(
      children: [
        msg,
        IconButton(
          onPressed: () {},
          icon: message.isLiked!
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_border),
          color: message.isLiked!
              ? Theme.of(context).primaryColor
              : Colors.blueGrey,
        )
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
        margin: const EdgeInsets.only(
            top: 10.0, bottom: 15.0, left: 10.0, right: 10.0),
        decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: const BorderRadius.all(Radius.circular(15.0))),
        height: 50.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.attachment),
              iconSize: 25.0,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
                child: TextField(
              textCapitalization: TextCapitalization.sentences,
              maxLines: null,
              onChanged: (value) {},
              decoration: const InputDecoration.collapsed(
                  hintText: "Send a message..."),
            )),
            const SizedBox(
              width: 5.0,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.emoji_emotions_outlined),
              iconSize: 25.0,
              color: Theme.of(context).primaryColor,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send),
              iconSize: 25.0,
              color: Theme.of(context).primaryColor,
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            widget.user?.name ?? "Unknown",
            style: const TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
              iconSize: 30.0,
              color: Colors.white,
            )
          ],
          elevation: 0.0,
        ),
        body: Stack(children: [
          Container(
            height: 100.0,
            width: double.infinity,
            color: Colors.red,
          ),
          GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0))),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                      child: ListView.builder(
                        reverse: true,
                        itemCount: messages.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Message message = messages[index];
                          final bool isMe = message.sender.id == currentUser.id;
                          return _buildMessage(message, isMe);
                        },
                      ),
                    ),
                  ),
                ),
                _buildMessageComposer()
              ],
            ),
          ),
        ]));
  }
}
