import 'package:flutter/material.dart';
import '../../widgets/drawer_navigation.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Back, Dhanraj!'),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          CircleAvatar(backgroundImage: AssetImage('assets/icon.png')),
        ],
      ),
      drawer: SizedBox(
        width: screenWidth * 0.75, // Drawer takes up max 75% of screen width
        child: const DrawerNavigation(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0), // Prevents overflow
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProgressTracker(),
              SizedBox(height: 20),
              _buildUpcomingAssignments(),
              SizedBox(height: 20),
              _buildAnnouncements(),
              SizedBox(height: 20),
              _buildQuickLinks(screenWidth),
              SizedBox(height: 20),
              _buildLeaderboard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressTracker() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Progress",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            LinearProgressIndicator(value: 0.7),
            SizedBox(height: 8),
            Text("Python Basics: 70% Complete"),
          ],
        ),
      ),
    );
  }

  Widget _buildUpcomingAssignments() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Upcoming Assignments",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ListTile(
              title: Text("Python Quiz – Due Tomorrow at 3 PM"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text("Start Quiz"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnnouncements() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Announcements",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ListTile(
              title: Text("Exam Schedule Released – Jan 15"),
              subtitle: Text("Click for details"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickLinks(double screenWidth) {
    return SizedBox(
      width: screenWidth, // Ensures buttons don't overflow
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Allows scrolling if needed
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.play_circle_fill),
              label: Text("Continue Learning"),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.video_call),
              label: Text("Join Live Class"),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.question_answer),
              label: Text("Ask a Question"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLeaderboard() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Leaderboard",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ListTile(
              leading: CircleAvatar(child: Text("1")),
              title: Text("John Doe"),
              trailing: Text("950 XP"),
            ),
            ListTile(
              leading: CircleAvatar(child: Text("2")),
              title: Text("Jane Smith"),
              trailing: Text("920 XP"),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StudentDashboard(),
  ));
}
