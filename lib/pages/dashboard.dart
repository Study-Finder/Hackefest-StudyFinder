import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DASHBOARD', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[800],
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/notification');
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search your notifications',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          _buildCard('TRACKING LEARNING PROGRESS', Icons.show_chart),
          SizedBox(height: 16),
          _buildNotificationSection(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue[800],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    String title,
    IconData iconData,
  ) {
    return Card(
      elevation: 4,
      color: Colors.blue[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        height: 100,
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(iconData, size: 50, color: Colors.white),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationSection() {
    return Card(
      color: Colors.blue[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Icon(Icons.chat, color: Colors.white, size: 50.0),
                SizedBox(width: 8),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'NOTIFICATION NEW CHAT',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.white54),
            _buildChatNotification('Jhon Doe', 'Chat', 1),
            _buildChatNotification('Arthur', 'Chat', 1),
          ],
        ),
      ),
    );
  }

  Widget _buildChatNotification(
      String name, String message, int notificationCount) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 4.0),
      title: Text(
        name,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      subtitle: Text(
        message,
        style: TextStyle(color: Colors.white.withOpacity(0.6)),
      ),
      trailing: _buildNotificationBadge(notificationCount),
    );
  }

  Widget _buildNotificationBadge(int notificationCount) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: Text(
        '$notificationCount',
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}
