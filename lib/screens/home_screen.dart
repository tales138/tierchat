import 'package:flutter/material.dart';
//import 'package:tierchat/screens/chat_screen.dart';
import 'package:tierchat/widgets/chat_adocao.dart';

import 'package:tierchat/widgets/chat_lojas.dart';
//import '../widgets/chats_selector.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with TickerProviderStateMixin {

 late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined), 
          iconSize: 25.0,
          color: Colors.black,
          onPressed: () {},
        ),
        backgroundColor:Colors.white,
        title: const Text(
          'CHATS',
           style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
          )
          ),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: const <Widget>[
            Tab(
              child: Text(
                'Adoção',
                style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.black
                )
              ),
             //text: 'Adoção',
            ),
            Tab(
              child: Text(
                'Lojas',
                style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.black
                )
              ),
            ),
            
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          ChatAdocao(),
          ChatLojas(),
        ],
      ),
    );

    
    /*return Scaffold(
      appBar:AppBar(
        
        backgroundColor:Colors.white,
        leading:  IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined), 
          iconSize: 30.0,
          color: Colors.black,
          onPressed: () {},
          ),
          title: const Text(
          'Chats',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          ChatSelector(),
           Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  ChatAdocao()
                ],
              ),
            ),
          ),
          //ChatAdocao()
        ],
      ),
    );*/
  }
}



