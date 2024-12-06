import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('lib/assets/images/Marky.jpg'),
            ),
            SizedBox(height: 20),
            Text('GC Evo', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Music Lover', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
