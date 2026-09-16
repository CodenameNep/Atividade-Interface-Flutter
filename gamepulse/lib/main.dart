import 'package:flutter/material.dart';

void main() {
  runApp(const GamePulseApp());
}

class GamePulseApp extends StatelessWidget {
  const GamePulseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GamePulse',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121214),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1F1F23),
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.sports_esports, color: Colors.greenAccent),
        title: const Text(
          'GamePulse',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFeaturedCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedCard() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F23),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'EM DESTAQUE • PS5 & PC',
            style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'GTA 6 ganha novo trailer revelando gameplay inédita e data de lançamento',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.access_time, size: 14, color: Colors.grey),
              SizedBox(width: 4),
              Text(
                '5 min de leitura',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              SizedBox(width: 16),
              Icon(Icons.calendar_today, size: 14, color: Colors.grey),
              SizedBox(width: 4),
              Text(
                'Hoje, 14:30',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
