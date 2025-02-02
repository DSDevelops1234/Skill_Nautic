// collaboration_page.dart

import 'package:flutter/material.dart';

class CollaborationPage extends StatelessWidget {
  const CollaborationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collaboration Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Collaborate with Your Peers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'This is the collaboration page where students and teachers can work together, share resources, and communicate effectively.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.group, size: 32),
                    title: const Text('Discussion Groups'),
                    subtitle:
                        const Text('Join topic-specific discussion groups.'),
                    onTap: () {
                      // Navigate to Discussion Groups Page
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.attach_file, size: 32),
                    title: const Text('Shared Resources'),
                    subtitle: const Text('Access shared files and materials.'),
                    onTap: () {
                      // Navigate to Shared Resources Page
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.calendar_today, size: 32),
                    title: const Text('Schedule Meetings'),
                    subtitle: const Text('Organize and attend group meetings.'),
                    onTap: () {
                      // Navigate to Schedule Meetings Page
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.chat, size: 32),
                    title: const Text('Direct Messages'),
                    subtitle:
                        const Text('Chat directly with peers and teachers.'),
                    onTap: () {
                      // Navigate to Direct Messages Page
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
