import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {


  final User user;
  const ChatScreen({Key? key, required this.user}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  _buildMSG(Message message, bool isMe){
    final Container msg =
    Container(
      margin: isMe ? const EdgeInsets.only(top:8.0, bottom: 8.0, left: 80.0) : const EdgeInsets.only(top:8.0, bottom: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      width: MediaQuery.of(context).size.width*0.75,
      decoration: BoxDecoration(
        color:  isMe ?   const Color(0xFFFFFDE7) : const Color(0xFFFFEFEE),
        borderRadius: isMe ? const BorderRadius.only(
          topLeft: Radius.circular(15.0),
          bottomLeft: Radius.circular(15.0),
        ) : const BorderRadius.only(
          topRight: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: 5.0,),
          Text(
            message.text,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
    if(isMe){
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
        IconButton(
          onPressed: () {},
          icon: message.isLiked ? const Icon(Icons.favorite) :  const Icon(Icons.favorite_border),
          iconSize: 30.0,
          color: message.isLiked ? Theme.of(context).primaryColor : Colors.blueGrey,
        ),
      ],
    );
  }

  _buildMSGComposer(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color:const Color(0xFFFFFDE7),
      child: Row(
        children: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt),
              iconSize: 25.0,
              color:Theme.of(context).primaryColor,
          ),
          const Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message...'
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color:Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            widget.user.name,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
              iconSize: 30.0,
              color: Colors.white,
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  )
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                    // reverse: true,
                    padding: EdgeInsets.only(top:15.0),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index){
                      final msg = messages[index];
                      final bool isMe = msg.sender.id == currentUser.id;
                      return _buildMSG(msg, isMe);
                    },

                  ),
                ),
              ),
            ),
            _buildMSGComposer(),
          ],
        ),
      ),
    );
  }
}
