import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool _locationSharing = true;
  bool _dataCollection = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Privacy',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Location Sharing'),
            subtitle: const Text('Share vehicle location data'),
            value: _locationSharing,
            onChanged: (bool value) {
              setState(() {
                _locationSharing = value;
              });
            },
          ),
          const Divider(),
          SwitchListTile(
            title: const Text('Data Collection'),
            subtitle: const Text('Allow collection of vehicle performance data'),
            value: _dataCollection,
            onChanged: (bool value) {
              setState(() {
                _dataCollection = value;
              });
            },
          ),
          const Divider(),
          const ListTile(
            title: Text('Data Usage'),
            trailing: Icon(Icons.chevron_right),
          ),
          const Divider(),
          const ListTile(
            title: Text('Privacy Policy'),
            trailing: Icon(Icons.chevron_right),
          ),
          const Divider(),
          const ListTile(
            title: Text('Terms of Service'),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
} 