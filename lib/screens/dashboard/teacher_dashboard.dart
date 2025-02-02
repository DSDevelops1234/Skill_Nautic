// teacher_dashboard.dart

import 'package:flutter/material.dart';
import '../../widgets/drawer_navigation.dart';

class TeacherDashboard extends StatelessWidget {
  const TeacherDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Dashboard'),
        backgroundColor: Colors.blue,
      ),
      drawer: const DrawerNavigation(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome, Teacher!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _dashboardCard("Courses", Icons.book, Colors.blue, () {
                    Navigator.pushNamed(context, '/courses');
                  }),
                  _dashboardCard("Profile", Icons.person, Colors.green, () {
                    Navigator.pushNamed(context, '/profile');
                  }),
                  _dashboardCard("Students", Icons.people, Colors.orange, () {
                    // Add action
                  }),
                  _dashboardCard("Schedule", Icons.calendar_today, Colors.red,
                      () {
                    // Add action
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dashboardCard(
      String title, IconData icon, Color color, Function onTap) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Card(
        color: color.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 10),
            Text(title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
