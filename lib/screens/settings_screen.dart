import 'package:flutter/material.dart';
import 'settings/account_screen.dart';
import 'settings/vehicle_settings_screen.dart';
import 'settings/privacy_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Account'),
            leading: const Icon(Icons.person_outline),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AccountScreen()),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Vehicle Settings'),
            leading: const Icon(Icons.directions_car_outlined),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const VehicleSettingsScreen()),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Notifications'),
            leading: const Icon(Icons.notifications_outlined),
            trailing: Switch(
              value: true,
              onChanged: (value) {
                // Handle notification settings
              },
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Privacy'),
            leading: const Icon(Icons.privacy_tip_outlined),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PrivacyScreen()),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Help & Support'),
            leading: const Icon(Icons.help_outline),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Show help and support dialog
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Help & Support'),
                  content: const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Contact Support:'),
                      SizedBox(height: 8),
                      Text('Email: support@telematics.com'),
                      Text('Phone: 1-800-TELEMATIC'),
                      SizedBox(height: 16),
                      Text('Version 1.0.0'),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Close'),
                    ),
                  ],
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('About'),
            leading: const Icon(Icons.info_outline),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'Telematics App',
                applicationVersion: '1.0.0',
                applicationIcon: const Icon(Icons.directions_car),
                children: const [
                  Text('A comprehensive vehicle monitoring solution'),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
} 