import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Constants/constants.dart';
import 'package:restaurant/Models/message_model.dart';
import 'package:restaurant/Modules/Login%20Screen.dart';

import '../Widgets/Chat Bubble.dart';

class ChatScreen extends StatelessWidget {
  CollectionReference messages = FirebaseFirestore.instance.collection(KMessagesColection);
TextEditingController controller =TextEditingController();
final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(KCreatedAt).snapshots(),
        builder: (context, snapshot){
        if(snapshot.hasData){
          List<Message> messageList = [];
          for(int i = 0; i< snapshot.data!.docs.length;i++){
            messageList.add(Message.fromJson(snapshot.data!.docs[i]));
          }
      return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){
              Navigator.pushReplacement(context, 
                  MaterialPageRoute(builder: (context)=> LoginScreen()));
            }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
          ],
          automaticallyImplyLeading: false,
          title:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.chat,size: 30,),
              SizedBox(width: 5,),
              Text('Scholar Chat',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _controller,
                itemCount: messageList.length,
                  itemBuilder: (context,index){
                    return messageList[index].id == email? ChatBubble(
                      message: messageList[index ],):
                    ChatBubbleForFriend(message: messageList[index ]);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: controller,
                onFieldSubmitted: (data){
                  messages.add({
                    'message':data,
                    KCreatedAt :DateTime.now(),
                    'id': email
                  });
                  controller.clear();
                  _controller.animateTo(
                    _controller.position.maxScrollExtent,
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                  );
                },
                decoration: InputDecoration(
                  hintText: 'Send Message',
                  suffixIcon: Icon(Icons.send,size: 25,color: Colors.deepOrange,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
              ),
            ),
          ],
        ),
      );}else{
          return Text('Loading...');
        }
    });
  }
}

