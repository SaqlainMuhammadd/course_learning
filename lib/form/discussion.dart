import 'package:flutter/material.dart';

class DiscussionScreen extends StatefulWidget {
  @override
  _DiscussionScreenState createState() => _DiscussionScreenState();
}

class _DiscussionScreenState extends State<DiscussionScreen> {
  final List<Map<String, String>> _messages = [
    {'user': 'Ayesha', 'text': 'Hello, how are you?'},
    {'user': 'Maryam', 'text': 'I am good, thanks!'},
    {'user': 'Fatima', 'text': 'What are you working on?'},
    {'user': 'Sunny', 'text': 'Just a Flutter project.'},
  ];

  final TextEditingController _messageController = TextEditingController();

  void _sendMessage() {
    setState(() {
      _messages.add({'user': 'Me', 'text': _messageController.text});
      _messageController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Discussion Forum',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                final isMe = message['user'] == 'Me';
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment:
                        isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: [
                      if (!isMe)
                        CircleAvatar(
                          child: Text(message['user']![0]),
                          backgroundColor: Colors.grey,
                        ),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: isMe ? Colors.teal : Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              message['user']!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: isMe ? Colors.white : Colors.black,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              message['text']!,
                              style: TextStyle(
                                color: isMe ? Colors.white : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      if (isMe)
                        CircleAvatar(
                          child: Text('Me'[0]),
                          backgroundColor: Colors.teal,
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      labelText: 'Message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                FloatingActionButton(
                  onPressed: _sendMessage,
                  child: Icon(Icons.send),
                  backgroundColor: Colors.teal,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
