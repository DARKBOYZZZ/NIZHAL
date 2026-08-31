import 'package:flutter/material.dart';

void main() => runApp(const NizhalApp());

class NizhalApp extends StatelessWidget {
  const NizhalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NIZHAL',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF080A12),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF9B5CFF),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 96, height: 96,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  gradient: const LinearGradient(
                    colors: [Color(0xFFB36BFF), Color(0xFF6D35C8)],
                  ),
                  boxShadow: const [
                    BoxShadow(color: Color(0x559B5CFF), blurRadius: 30),
                  ],
                ),
                child: const Center(
                  child: Text('N', style: TextStyle(fontSize: 64, fontWeight: FontWeight.w800)),
                ),
              ),
              const SizedBox(height: 22),
              const Text('NIZHAL', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800, letterSpacing: 3)),
              const SizedBox(height: 8),
              const Text('Private. Personal. Yours.', style: TextStyle(color: Colors.white70)),
              const SizedBox(height: 45),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Phone number or email',
                  prefixIcon: const Icon(Icons.person_outline),
                  filled: true,
                  fillColor: const Color(0xFF171A26),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 14),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.lock_outline),
                  filled: true,
                  fillColor: const Color(0xFF171A26),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(18), borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 22),
              SizedBox(
                width: double.infinity, height: 54,
                child: FilledButton(
                  onPressed: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const ChatPage()),
                  ),
                  child: const Text('Login', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                ),
              ),
              const SizedBox(height: 20),
              const Text('🔒 Your private space', style: TextStyle(color: Colors.white54)),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NIZHAL', style: TextStyle(fontWeight: FontWeight.w800)),
        actions: const [
          Icon(Icons.call_outlined),
          SizedBox(width: 18),
          Icon(Icons.videocam_outlined),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: const Text('My Kochu ❤️', style: TextStyle(fontWeight: FontWeight.w700)),
            subtitle: const Text('Online', style: TextStyle(color: Colors.greenAccent)),
          ),
          const Divider(height: 1),
          const Expanded(
            child: Center(
              child: Text('Your private chat starts here 💜', style: TextStyle(color: Colors.white70)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 14),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      filled: true,
                      fillColor: const Color(0xFF171A26),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  radius: 25,
                  child: IconButton(
                    icon: const Icon(Icons.mic),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.chat_bubble_outline), label: 'Chats'),
          NavigationDestination(icon: Icon(Icons.call_outlined), label: 'Calls'),
          NavigationDestination(icon: Icon(Icons.mic_none), label: 'Voice'),
          NavigationDestination(icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
    );
  }
}
