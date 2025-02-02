import 'package:flutter/material.dart';
import 'package:edu_connect_app/auth/login_page.dart';
import 'package:edu_connect_app/auth/sign_up_page.dart';
import 'package:edu_connect_app/screens/dashboard/student_dashboard.dart';
import 'package:edu_connect_app/screens/courses_page.dart';

class AssignmentsPage extends StatelessWidget {
  const AssignmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignments'),
      ),
      body: const Center(
        child: Text('Assignments Page Content'),
      ),
    );
  }
}

void main() {
  runApp(const EduConnectApp());
}

class EduConnectApp extends StatelessWidget {
  const EduConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduConnect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        '/signup': (context) => const SignUpPage(),
        '/studentDashboard': (context) => const StudentDashboard(),
        '/courses': (context) => const CoursesPage(),
        '/assignments': (context) =>
            const AssignmentsPage(), // Add AssignmentsPage route
      },
    );
  }
}
