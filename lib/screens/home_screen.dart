import 'package:flutter/material.dart';
import 'package:hiit_addict/services/theme_service.dart';
import '../widgets/app_drawer.dart';
import 'preferences_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _screens = const [
    Center(child: Text('Timers...')),
    Center(child: Text('Videos')),
    Center(child: Text('Favorites')),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _showAddTimerDialog() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Timer'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context), child: const Text('OK')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeService = ThemeInheritor.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('HIIT Addict'),
        actions: [
          IconButton(
            icon: Icon(themeService.isDarkMode.value
                ? Icons.light_mode
                : Icons.dark_mode),
            onPressed: themeService.toggleTheme,
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'preferences') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PreferencesScreen(),
                  ),
                );
              }
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem<String>(
                value: 'preferences',
                child: Text('Preferences'),
              ),
              const PopupMenuItem<String>(
                value: 'about',
                child: Text('About', style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.timer),
            label: 'Timers',
          ),
          NavigationDestination(
            icon: Icon(Icons.video_collection),
            label: 'Videos',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddTimerDialog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
