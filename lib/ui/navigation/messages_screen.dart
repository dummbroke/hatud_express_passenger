import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});
  @override
  State<MessagesScreen> createState() => MessagesScreenState();
}

class MessagesScreenState extends State<MessagesScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Messages',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.dark,
          ),
        ),
      ),
      backgroundColor: AppColors.light,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTabIndex = 0;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: selectedTabIndex == 0 ? AppColors.secondary : Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                            'Chats',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: selectedTabIndex == 0 ? AppColors.dark : Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: selectedTabIndex == 0 ? AppColors.secondary : Colors.transparent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'Notifications',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: selectedTabIndex == 0 ? AppColors.dark : Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: selectedTabIndex == 0 ? _buildChatList() : _buildNotificationsList(),
          ),
        ],
      ),
    );
  }
}
Widget _buildChatList() {
  final mockChats = [
    {
      'name': 'Keen Thomas Memoracion',
      'message': 'Hello, how are you?',
      'timestap': '10:30 AM',
      'avatar': 'assets/images/avatar.png',
    }
  ];
  if (mockChats.isEmpty) {
    return const Center(
      child: Text('No chats yet',
      style: TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
      ),
    );
  }

  return ListView.builder(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    itemCount: mockChats.length,
    itemBuilder: (context, index) {
      final chat = mockChats[index];
      return _buildChatTile(
        name: chat['name'] as String,
        message: chat['message'] as String,
        timestap: chat['timestap'] as String,
        avatar: chat['avatar'] as String,
      );
    },
  );
}

Widget _buildNotificationsList() {
  return const Center(
    child: Text(
        'No Notifications',
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
    ),
  );
}

Widget _buildChatTile({
  required String name,
  required String message,
  required String timestap,
  required String avatar,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 12.0),
    padding: const EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          spreadRadius: 1,
        ),
      ]
    ),
  );
}
