// import 'package:flutter/material.dart';
// import '../../widgets/drawer_navigation.dart';

// class StudentDashboard extends StatelessWidget {
//   const StudentDashboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Student Dashboard'),
//         backgroundColor: Colors.blue,
//       ),
//       drawer: const DrawerNavigation(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Welcome Header
//               const Text(
//                 "Welcome, Student!",
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               const Text(
//                 "Your current progress and updates at a glance:",
//                 style: TextStyle(fontSize: 16, color: Colors.black54),
//               ),
//               const SizedBox(height: 20),

//               // Quick Stats Section
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     _quickStatCard("Courses", "5", Colors.blue),
//                     _quickStatCard("Assignments", "3 Pending", Colors.orange),
//                     _quickStatCard("Live Classes", "2 Today", Colors.red),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 30),

//               // Course Overview Section
//               const Text(
//                 "Course Overview",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: 3, // Example: 3 courses
//                 itemBuilder: (context, index) {
//                   final courseNames = [
//                     "Python Programming",
//                     "Data Structures",
//                     "Web Development"
//                   ];
//                   return _courseOverviewCard(
//                     courseName: courseNames[index],
//                     studentsEnrolled: "${20 + index * 10} students enrolled",
//                     assignmentsPending: "${index + 2} assignments pending",
//                     onTap: () {
//                       Navigator.pushNamed(context, '/courseDetails');
//                     },
//                   );
//                 },
//               ),
//               const SizedBox(height: 20),

//               // Action Grid Section
//               GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 16,
//                 mainAxisSpacing: 16,
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 children: [
//                   _dashboardCard("Courses", Icons.book, Colors.blue, () {
//                     Navigator.pushNamed(context, '/courses');
//                   }),
//                   _dashboardCard("Profile", Icons.person, Colors.green, () {
//                     Navigator.pushNamed(context, '/profile');
//                   }),
//                   _dashboardCard("Progress", Icons.bar_chart, Colors.orange,
//                       () {
//                     // Add action
//                   }),
//                   _dashboardCard("Live Classes", Icons.video_call, Colors.red,
//                       () {
//                     // Add action
//                   }),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Widget: Quick Stat Card
//   Widget _quickStatCard(String title, String value, Color color) {
//     return Card(
//       color: color.withOpacity(0.1),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                   fontSize: 16, fontWeight: FontWeight.bold, color: color),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               value,
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget: Course Overview Card
//   Widget _courseOverviewCard({
//     required String courseName,
//     required String studentsEnrolled,
//     required String assignmentsPending,
//     required Function onTap,
//   }) {
//     return GestureDetector(
//       onTap: () => onTap(),
//       child: Card(
//         elevation: 2,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             children: [
//               Icon(Icons.book, size: 40, color: Colors.blue),
//               const SizedBox(width: 16),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       courseName,
//                       style: const TextStyle(
//                           fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 5),
//                     Text(
//                       studentsEnrolled,
//                       style:
//                           const TextStyle(fontSize: 14, color: Colors.black54),
//                     ),
//                     Text(
//                       assignmentsPending,
//                       style:
//                           const TextStyle(fontSize: 14, color: Colors.black54),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Widget: Dashboard Action Card
//   Widget _dashboardCard(
//       String title, IconData icon, Color color, Function onTap) {
//     return GestureDetector(
//       onTap: () => onTap(),
//       child: Card(
//         color: color.withOpacity(0.1),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 40, color: color),
//             const SizedBox(height: 10),
//             Text(title,
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import '../../widgets/drawer_navigation.dart';

// class StudentDashboard extends StatelessWidget {
//   const StudentDashboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Student Dashboard',
//             style: TextStyle(fontWeight: FontWeight.bold)),
//         backgroundColor: Colors.blueAccent,
//         elevation: 0,
//       ),
//       drawer: const DrawerNavigation(),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Welcome Header
//             const Text("Welcome, Student!",
//                 style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 8),
//             const Text("Your progress and updates at a glance:",
//                 style: TextStyle(fontSize: 16, color: Colors.black54)),
//             const SizedBox(height: 20),

//             // Quick Stats Section
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _quickStatCard("Courses", "5", Icons.book, Colors.blueAccent),
//                 _quickStatCard("Assignments", "3 Pending", Icons.assignment,
//                     Colors.orange),
//                 _quickStatCard(
//                     "Live Classes", "2 Today", Icons.video_call, Colors.red),
//               ],
//             ),
//             const SizedBox(height: 30),

//             // Course Overview Section
//             const Text("Course Overview",
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 10),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: 3,
//               itemBuilder: (context, index) {
//                 final courseNames = [
//                   "Python Programming",
//                   "Data Structures",
//                   "Web Development"
//                 ];
//                 return _courseOverviewCard(
//                   courseName: courseNames[index],
//                   studentsEnrolled: "${20 + index * 10} students enrolled",
//                   assignmentsPending: "${index + 2} assignments pending",
//                   onTap: () => Navigator.pushNamed(context, '/courseDetails'),
//                 );
//               },
//             ),
//             const SizedBox(height: 20),

//             // Action Grid Section
//             GridView.count(
//               crossAxisCount: 2,
//               crossAxisSpacing: 16,
//               mainAxisSpacing: 16,
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               children: [
//                 _dashboardCard("Courses", Icons.book, Colors.blueAccent, () {
//                   Navigator.pushNamed(context, '/courses');
//                 }),
//                 _dashboardCard("Profile", Icons.person, Colors.green, () {
//                   Navigator.pushNamed(context, '/profile');
//                 }),
//                 _dashboardCard(
//                     "Progress", Icons.bar_chart, Colors.orange, () {}),
//                 _dashboardCard(
//                     "Live Classes", Icons.video_call, Colors.red, () {}),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget: Quick Stat Card
//   Widget _quickStatCard(
//       String title, String value, IconData icon, Color color) {
//     return Expanded(
//       child: Card(
//         elevation: 3,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(icon, size: 36, color: color),
//               const SizedBox(height: 8),
//               Text(title,
//                   style: TextStyle(
//                       fontSize: 14, fontWeight: FontWeight.bold, color: color)),
//               const SizedBox(height: 5),
//               Text(value,
//                   style: const TextStyle(
//                       fontSize: 16, fontWeight: FontWeight.bold)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Widget: Course Overview Card
//   Widget _courseOverviewCard({
//     required String courseName,
//     required String studentsEnrolled,
//     required String assignmentsPending,
//     required Function onTap,
//   }) {
//     return GestureDetector(
//       onTap: () => onTap(),
//       child: Card(
//         elevation: 3,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             children: [
//               Icon(Icons.book, size: 40, color: Colors.blueAccent),
//               const SizedBox(width: 16),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(courseName,
//                         style: const TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold)),
//                     const SizedBox(height: 5),
//                     Text(studentsEnrolled,
//                         style: const TextStyle(
//                             fontSize: 14, color: Colors.black54)),
//                     Text(assignmentsPending,
//                         style: const TextStyle(
//                             fontSize: 14, color: Colors.black54)),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Widget: Dashboard Action Card
//   Widget _dashboardCard(
//       String title, IconData icon, Color color, Function onTap) {
//     return GestureDetector(
//       onTap: () => onTap(),
//       child: Card(
//         elevation: 3,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 40, color: color),
//             const SizedBox(height: 10),
//             Text(title,
//                 style:
//                     const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//           ],
//         ),
//       ),
//     );
//   }
// }