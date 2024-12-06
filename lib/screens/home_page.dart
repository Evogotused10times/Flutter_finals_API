import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/home.png', 
              width: 800, 
              height: 400, 
              fit: BoxFit.cover, 
            ),
            SizedBox(height: 20), 
            Text(
              'Choose your preferred Music Album!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {},
              child: Text('Explore Albums'),
            ),
          ],
        ),
      ),
    );
  }
}
