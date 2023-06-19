import 'package:flutter/material.dart';

void main() => runApp(TonyBusinessApp());

class TonyBusinessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tony Business',
      theme: ThemeData(
        primarySwatch: Colors.red ,scaffoldBackgroundColor: Colors.yellowAccent,

      ),
      home: BusinessScreen(),
    );
  }
}

class BusinessScreen extends StatelessWidget {
  final String capitalizedTony = 'TONY'.toUpperCase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tony Business'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to $capitalizedTony Business!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform an action when the button is pressed
                // For example, navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BusinessDetailsScreen(),
                  ),
                );
              },
              child: Text('View Business Details'),
            ),
          ],
        ),
      ),
    );
  }
}

class BusinessDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Business Details',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text('Here you can find detailed information about Tony Business.'),
          ],
        ),
      ),
    );
  }
}