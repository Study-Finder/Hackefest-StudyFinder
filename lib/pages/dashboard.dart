import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DASHBOARD', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Handle notifications tap
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search your notifications',
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          _buildCard('TRACKING PROGRESS BELAJAR', Icons.show_chart),
          _buildCard('NOTIFICATION NEW CHAT', Icons.chat, notificationCount: 1),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String title, IconData iconData,
      {int notificationCount = 0}) {
    return Card(
      child: ListTile(
        leading: Icon(iconData, size: 50),
        title: Text(title),
        trailing: notificationCount > 0
            ? CircleAvatar(
                radius: 12,
                child: Text('$notificationCount'),
                backgroundColor: Colors.red,
              )
            : null,
      ),
    );
  }
}
