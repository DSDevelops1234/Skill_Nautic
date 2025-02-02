import 'package:flutter/material.dart';
import 'auth/login_page.dart';
import 'auth/sign_up_page.dart';
import 'screens/dashboard/student_dashboard.dart';
import 'screens/dashboard/teacher_dashboard.dart';
import 'screens/courses_page.dart';
import 'screens/collaboration_page.dart';
import 'screens/profile_page.dart';
import 'widgets/bottom_navigation.dart';

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
        '/student': (context) => MainScaffold(userRole: 'student'),
        '/teacher': (context) => MainScaffold(userRole: 'teacher'),
        '/coursesPage': (context) => CoursesPage(),
      },
    );
  }
}

class MainScaffold extends StatefulWidget {
  final String userRole;

  const MainScaffold({super.key, required this.userRole});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0;

  final List<Widget> _studentPages = [
    const StudentDashboard(),
    const CoursesPage(),
    const CollaborationPage(),
    ProfilePage(),
  ];

  final List<Widget> _teacherPages = [
    const TeacherDashboard(),
    const CoursesPage(),
    const CollaborationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildCurrentPage(),
      bottomNavigationBar: BottomNavigation(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        userRole: widget.userRole,
      ),
    );
  }

  Widget _buildCurrentPage() {
    if (widget.userRole == 'student') {
      return _studentPages[_currentIndex];
    }
    return _teacherPages[_currentIndex];
  }
}
