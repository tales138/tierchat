import 'package:flutter/material.dart';
import 'package:tierchat/screens/chat_screen.dart';
import 'package:tierchat/models/messages.dart';

class ChatAdocao extends StatefulWidget {
  const ChatAdocao({ Key? key }) : super(key: key);

  @override
  State<ChatAdocao> createState() => _ChatAdocaoState();
}

class _ChatAdocaoState extends State<ChatAdocao> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
     child: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 5.0,right: 5.0,),
        child:ListView.builder(
          itemCount:chats.length,
          itemBuilder:(BuildContext context, int index) {
           final Message chat = chats[index];
           return GestureDetector(
              onTap:() => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChatScreen(
                      user: chat.sender,
                    ),
                  ),
              ),
              child: 
                Container(
                padding: const EdgeInsets.only(top: 10.0, left: 15.0,right: 15.0,),
                child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                leading:
                const CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('https://portalpopline.com.br/wp-content/uploads/2022/02/doutor-estranho-mcu.jpg'),
                ),
                title:  Text(
                  chat.sender.name,
                  style: 
                    const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        ),
                  ),
                subtitle: Text(chat.text),
                trailing: Column(
                  children:  <Widget>[
                    Text(
                      chat.time,
                      style: 
                        const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      chat.unread 
                      ? Container(
                          width: 40.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'NEW',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                        :const Text(''),
                      
                  ],
              ),
              tileColor: 
                chat.unread ? const Color(0xFFFFEFEE) : Colors.white,//const Color(0xFFFFEFEE),
            ),
            ),
            );       
          }
        ),
     )
    );
  }
}


