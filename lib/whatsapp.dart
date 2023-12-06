// ignore_for_file: use_key_in_widget_constructors, camel_case_types, library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(whatsapp());
}

class whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WhatsAppClone(),
      debugShowCheckedModeBanner: false, // Remove debug banner
    );
  }
}

class WhatsAppClone extends StatefulWidget {
  @override
  _WhatsAppCloneState createState() => _WhatsAppCloneState();
}

class _WhatsAppCloneState extends State<WhatsAppClone>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          'WhatsApp',
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 14, 14, 14),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            onPressed: () {
              // Implement more options functionality
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {
              // Implement more options functionality
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Chat'),
            Tab(text: 'Status'),
            Tab(text: 'Call'),
          ],
          labelColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _getChatTab(),
          _getStatusTab(),
          _getCallTab(),
        ],
      ),
    );
  }

  Widget _getChatTab() {
    return ListView.builder(
      itemCount: _chatData.length,
      itemBuilder: (context, index) {
        return _buildChatItem(_chatData[index]);
      },
    );
  }

  Widget _getStatusTab() {
    return const Center(
      child: Text('Status Tab Content', style: TextStyle(color: Colors.black)),
    );
  }

  Widget _getCallTab() {
    return const Center(
      child: Text('Call Tab Content', style: TextStyle(color: Colors.black)),
    );
  }

  Widget _buildChatItem(ChatMessage message) {
    return ListTile(
      title: Text(message.sender),
      subtitle: Text(message.text),
      leading: CircleAvatar(
        child: Text(message.sender[0]),
      ),
      trailing: message.unreadCount > 0
          ? CircleAvatar(
              backgroundColor: Colors.green,
              radius: 10,
              child: Text(
                message.unreadCount.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            )
          : null,
      onTap: () {
        // Implement chat item tap functionality
      },
    );
  }
}

class ChatMessage {
  final String sender;
  final String text;
  final int unreadCount;

  ChatMessage({required this.sender, required this.text, this.unreadCount = 0});
}

List<ChatMessage> _chatData = [
  ChatMessage(sender: 'Ali hussein', text: 'se eti', unreadCount: 2),
  ChatMessage(sender: 'Anwar khan', text: 'way kiwayiba inte ing bati', unreadCount: 4),
  ChatMessage(sender: 'Abdiweli osman', text: 'arow se lay ki roogtey', unreadCount: 1),
  ChatMessage(sender: 'Bolio', text: 'waringbi', unreadCount: 2),
  ChatMessage(sender: 'Zakinho', text: 'assalamu alaykum?', unreadCount: 4),
  ChatMessage(sender: 'Ramlo', text: 'kooybi meeli?', unreadCount:1),
  ChatMessage(sender: 'maria', text: 'wacaluyku salam?', unreadCount:4),
  ChatMessage(sender: 'mohamed', text: 'alinki awkey?', unreadCount:8),
  ChatMessage(sender: 'adamow', text: 'ariitayni ?', unreadCount:2),
  ChatMessage(sender: 'yusuf hassan', text: 'oowki banog dheeli korte?', unreadCount:4),




];
