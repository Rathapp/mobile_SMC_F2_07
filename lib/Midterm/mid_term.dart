import 'package:flutter/material.dart';
class mid_term extends StatelessWidget {
  const mid_term({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Profile Header
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), 
            ),
            const SizedBox(height: 10),
            const Text(
              'Sarin Bunnaroth',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              'bunnaroth@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Edit Profile'),
            ),
            const SizedBox(height: 30),
            _buildMenuItem(Icons.favorite_border, 'Favourites'),
            _buildMenuItem(Icons.download_outlined, 'Downloads'),
            const Divider(indent: 20, endIndent: 20),
            _buildMenuItem(Icons.language, 'Language'),
            _buildMenuItem(Icons.location_on_outlined, 'Location'),
            _buildMenuItem(Icons.privacy_tip_outlined, 'Privacy'),
            _buildMenuItem(Icons.display_settings_outlined, 'Display'),
            _buildMenuItem(Icons.rss_feed, 'Feed preference'),
            _buildMenuItem(Icons.subscriptions_outlined, 'Subscription'),
            const Divider(indent: 20, endIndent: 20),
            _buildMenuItem(Icons.delete_outline, 'Clear cache'),
            _buildMenuItem(Icons.history, 'Clear history'),
            _buildMenuItem(Icons.logout, 'Log Out', isLogout: true),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, {bool isLogout = false}) {
    return ListTile(
      leading: Icon(icon, color: isLogout ? Colors.red : Colors.black54),
      title: Text(
        title,
        style: TextStyle(
          color: isLogout ? Colors.red : Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: isLogout
          ? null
          : const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: () {},
    );
  }
}
