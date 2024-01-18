// notification_page.dart
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () =>
              Navigator.pushReplacementNamed(context, '/dashboard'),
        ),
        title: Text('NOTIFICATION', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 16),
          _notificationItem('Student 1', 'Request as Friend'),
          _notificationItem('Student 2', 'From matchmaking'),
          _notificationItem('Student 3', 'From matchmaking'),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat_bubble),
      //       label: 'Chats',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }

  Widget _notificationItem(String title, String subtitle) {
    return ListTile(
      leading: Icon(Icons.person_outline, size: 40.0),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: ElevatedButton(
        child: Text('SEE PROFILE'),
        onPressed: () {
          // Implement navigation to profile
        },
      ),
    );
  }
}
