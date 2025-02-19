import 'package:flutter/material.dart';

class VehicleSettingsScreen extends StatefulWidget {
  const VehicleSettingsScreen({super.key});

  @override
  State<VehicleSettingsScreen> createState() => _VehicleSettingsScreenState();
}

class _VehicleSettingsScreenState extends State<VehicleSettingsScreen> {
  bool _speedAlerts = true;
  bool _maintenanceReminders = true;
  String _selectedUnit = 'km/h';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Vehicle Settings',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Speed Unit'),
            subtitle: Text(_selectedUnit),
            trailing: PopupMenuButton<String>(
              onSelected: (String value) {
                setState(() {
                  _selectedUnit = value;
                });
              },
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(
                  value: 'km/h',
                  child: Text('Kilometers per hour (km/h)'),
                ),
                const PopupMenuItem(
                  value: 'mph',
                  child: Text('Miles per hour (mph)'),
                ),
              ],
            ),
          ),
          const Divider(),
          SwitchListTile(
            title: const Text('Speed Alerts'),
            subtitle: const Text('Get notified when exceeding speed limit'),
            value: _speedAlerts,
            onChanged: (bool value) {
              setState(() {
                _speedAlerts = value;
              });
            },
          ),
          const Divider(),
          SwitchListTile(
            title: const Text('Maintenance Reminders'),
            subtitle: const Text('Receive vehicle maintenance notifications'),
            value: _maintenanceReminders,
            onChanged: (bool value) {
              setState(() {
                _maintenanceReminders = value;
              });
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Vehicle Information'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to vehicle information screen
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Sensor Calibration'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Navigate to sensor calibration screen
            },
          ),
        ],
      ),
    );
  }
} 