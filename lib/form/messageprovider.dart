import 'package:flutter/material.dart';

class Message {
  final String user;
  final String text;
  final DateTime timestamp;

  Message({required this.user, required this.text, required this.timestamp});
}

class MessageProvider with ChangeNotifier {
  List<Message> _messages = [];

  List<Message> get messages => _messages;

  void addMessage(Message message) {
    _messages.add(message);
    notifyListeners();
  }
}
