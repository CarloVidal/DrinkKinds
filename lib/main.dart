import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile(),
    debugShowCheckedModeBanner: false,
  ));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DrinkKinds'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const Text(
                    'User Profile',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Icon(Icons.person, size: 100, color: Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text('Name:\nJohn Carlo Vidal', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Email:\njcarlovidal1@gmail.com', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Company:\nBatangas State University TNEU Balayan', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Contact Number:\n09066255224', style: TextStyle(fontSize: 18)),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  print('Logged out');
                },
                child: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(200, 60),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}