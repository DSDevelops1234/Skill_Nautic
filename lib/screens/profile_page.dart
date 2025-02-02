// profile_page.dart

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Personal Information Section
              Text(
                'Personal Information',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 8),
              ListTile(
                title: Text('Name'),
                subtitle: Text('John Doe'),
              ),
              ListTile(
                title: Text('Email'),
                subtitle: Text('john.doe@example.com'),
              ),
              ListTile(
                title: Text('Role'),
                subtitle: Text('Student'),
              ),
              Divider(),
              // Rewards and Badges Section
              Text(
                'Rewards and Badges',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 8),
              // Example rewards and badges
              ListTile(
                title: Text('Course Completion'),
                subtitle: Text('Completed Flutter Course'),
              ),
              ListTile(
                title: Text('Milestone'),
                subtitle: Text('100 Days of Code'),
              ),
              Divider(),
              // Bookmarks Section
              Text(
                'Bookmarks',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 8),
              // Example bookmarks
              ListTile(
                title: Text('Flutter Documentation'),
                subtitle: Text('https://flutter.dev/docs'),
              ),
              ListTile(
                title: Text('Dart Packages'),
                subtitle: Text('https://pub.dev'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
