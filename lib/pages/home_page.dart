import 'package:flutter/material.dart';
import 'package:flutter_provider_example/models/settings.dart';
import 'package:flutter_provider_example/pages/settings_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Settings>(
            builder: (context, settings, child) =>
                Text(settings.name, style: const TextStyle(fontSize: 50)),
          ),
          Consumer<Settings>(
            builder: (context, settings, child) =>
                Text('${settings.age}', style: const TextStyle(fontSize: 50)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
            child: const Text('Settings'),
          )
        ],
      )),
    );
  }
}
