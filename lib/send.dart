import 'package:flutter/material.dart';

class Send extends StatelessWidget {
  late final assetPath, cookieprice, cookiename;

  Send({this.assetPath, this.cookieprice, this.cookiename});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Deliver Soon...'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Left side image
              Expanded(
                flex: 1,
                child: Image.asset(
                  assetPath, // Replace with your image asset
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16), // Space between image and container
              
              // Right side container
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Tick mark icon
                      Icon(
                        Icons.check_circle, // Tick mark icon
                        size: 148.0, // Size of the icon
                        color: Colors.green,
                      ),
                      SizedBox(height: 8.0), // Space between icon and text
                      
                      // Big bold text
                      Text(
                        'Get Baking...',
                        style: TextStyle(
                          fontSize: 24.0, // Font size
                          fontWeight: FontWeight.bold, // Bold text
                        ),
                      ),
                      SizedBox(height: 4.0), // Space between texts
                      
                      // Small text below
                      Text(
                        'Freshly baked cookies, delivered with love.Sweeten your day, one box at a time!',
                        style: TextStyle(
                          fontSize: 24.0, // Smaller font size
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        cookiename+' will be delivered soon!!',
                        style: TextStyle(
                          fontSize: 24.0, // Smaller font size
                          color: Color.fromARGB(255, 36, 3, 81),
                        ),
                      ),
                      Text(
                        'Welcome Again!!',
                        style: TextStyle(
                          fontSize: 24.0, // Smaller font size
                          color: Color.fromARGB(255, 76, 175, 80),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}