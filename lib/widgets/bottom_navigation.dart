// import 'package:flutter/material.dart';

// class BottomNavigation extends StatefulWidget {
//   const BottomNavigation({super.key});

//   @override
//   _BottomNavigationState createState() => _BottomNavigationState();
// }

// class _BottomNavigationState extends State<BottomNavigation> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });

//     switch (index) {
//       case 0:
//         Navigator.pushNamed(
//             context, '/student_dashboard'); // Navigate to Student Dashboard
//         break;
//       case 1:
//         Navigator.pushNamed(
//             context, '/courses_page'); // Navigate to Courses Page
//         break;
//       case 2:
//         Navigator.pushNamed(context, '/assignments'); // Navigate to Assignments
//         break;
//       case 3:
//         Navigator.pushNamed(
//             context, '/collaboration_page'); // Navigate to Collaboration Page
//         break;
//       case 4:
//         Navigator.pushNamed(
//             context, '/profile_page'); // Navigate to Profile Page
//         break;
//       default:
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final String currentRoute = ModalRoute.of(context)?.settings.name ?? '';
//     print('Current Route: $currentRoute'); // Debug print statement

//     if (currentRoute == '/login' || currentRoute == '/signup') {
//       return const SizedBox
//           .shrink(); // Hide BottomNavigationBar on login and sign-up pages
//     }

//     // Ensure BottomNavigationBar is visible on specific pages
//     if (currentRoute == '/student_dashboard' ||
//         currentRoute == '/courses_page' ||
//         currentRoute == '/collaboration_page' ||
//         currentRoute == '/assignments' ||
//         currentRoute == '/profile_page') {
//       return BottomNavigationBar(
//         currentIndex: _selectedIndex, // Highlight the active tab
//         onTap: _onItemTapped,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Padding(
//               padding: EdgeInsets.only(
//                   top: 0.0), // Adjust padding to align with other icons
//               child: Icon(Icons.home, color: Colors.black),
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book,
//                 color: Colors.black), // Change icon color to black
//             label: 'Courses',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.assignment,
//                 color: Colors.black), // Change icon color to black
//             label: 'Assignments',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat,
//                 color: Colors.black), // Change icon color to black
//             label: 'Chat',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person,
//                 color: Colors.black), // Change icon color to black
//             label: 'Profile',
//           ),
//         ],
//       );
//     }

//     return const SizedBox.shrink(); // Hide BottomNavigationBar on other pages
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:edu_connect_app/screens/courses_page.dart';
// import 'package:edu_connect_app/screens/assignments_page.dart';
// import 'package:edu_connect_app/screens/collaboration_page.dart';
// import 'package:edu_connect_app/screens/profile_page.dart';
// import 'package:edu_connect_app/screens/dashboard/student_dashboard.dart';

// class BottomNavigation extends StatefulWidget {
//   const BottomNavigation({super.key});

//   @override
//   _BottomNavigationState createState() => _BottomNavigationState();
// }

// class _BottomNavigationState extends State<BottomNavigation> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     StudentDashboard(),
//     CoursesPage(),
//     AssignmentsPage(),
//     CollaborationPage(),
//     ProfilePage(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: _pages,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home, color: Colors.black),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book, color: Colors.black),
//             label: 'Courses',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.assignment, color: Colors.black),
//             label: 'Assignments',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat, color: Colors.black),
//             label: 'Chat',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person, color: Colors.black),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

// bottom_navigation.dart
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final String userRole;

  const BottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.userRole,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Courses',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: 'Collaborate',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
