import 'package:chat_app/screens/convoList.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screens/storyList.dart';

class Conversations extends StatefulWidget {
  const Conversations({super.key});

  @override
  State<Conversations> createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  TextEditingController _searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/woman.png"),
                ),
              ),
              const Text(
                "Chats",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.edit)
            ],
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFE9EAEC),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
                cursorColor: const Color(0xFF000000),
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,
                      color: const Color(0xFF000000).withOpacity(0.5)),
                  hintText: "Search",
                  border: InputBorder.none,
                )),
          ),
          SizedBox(height: 20),
          stories(context),
          SizedBox(height: 20),
          convos(context)
         
        ]),
      ))),
    );
  }
}
