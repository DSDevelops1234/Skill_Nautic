// student_dashboard.dart
import 'package:flutter/material.dart';
import '../../widgets/drawer_navigation.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
        backgroundColor: Colors.purpleAccent,
      ),
      drawer: const DrawerNavigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Personalized Greeting with Bright Colors
                _personalizedGreeting(),
                const SizedBox(height: 20),

                // Engaging Motivational Quote Section with Animation
                _motivationalQuote(),
                const SizedBox(height: 20),

                // Engaging Stats with Animated Progress Bars
                _quickStats(context),
                const SizedBox(height: 30),

                // Interactive Course Overview with Hover Animation
                _courseOverview(),
                const SizedBox(height: 20),

                // CTA Buttons with Smooth Hover Effects
                _actionButtons(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              bottom: 16.0, right: 16.0), // Adjust bottom and right padding
          child: FloatingActionButton(
            onPressed: () {
              // Action to perform on FAB press
            },
            backgroundColor: Colors.purpleAccent,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  // Personalized Greeting with Time-based Color Changes
  Widget _personalizedGreeting() {
    String greeting = "Good Morning, Student!";
    DateTime now = DateTime.now();
    if (now.hour >= 12 && now.hour < 17) greeting = "Good Afternoon, Student!";
    if (now.hour >= 17) greeting = "Good Evening, Student!";

    return Text(
      greeting,
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.purpleAccent,
      ),
    );
  }

  // Engaging Motivational Quote Section with Animation
  Widget _motivationalQuote() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.purpleAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            '"Learning is a treasure that will follow its owner everywhere."',
            style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              color: Colors.purpleAccent,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '- Chinese Proverb',
            style: TextStyle(
              fontSize: 14,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }

  // Engaging Quick Stats with Animated Circular Progress
  Widget _quickStats(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _quickStatCard(context, "Courses", "5", Colors.blue, () {
          Navigator.pushNamed(context, '/coursesPage');
        }),
        _quickStatCard(
            context, "Assignments", "3 Pending", Colors.orange, () {}),
        _quickStatCard(context, "Live Classes", "2 Today", Colors.red, () {}),
      ],
    );
  }

  // Quick Stat Card with Circular Progress Animation
  Widget _quickStatCard(BuildContext context, String title, String value,
      Color color, Function onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              const SizedBox(height: 10),
              CircularProgressIndicator(
                value: 0.7, // Example progress
                color: color,
                backgroundColor: color.withOpacity(0.3),
                strokeWidth: 6,
              ),
              const SizedBox(height: 10),
              Text(
                value,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Interactive Course Overview with Animated Hover Effect
  Widget _courseOverview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Course Overview",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            final courseNames = [
              "Python Programming",
              "Data Structures",
              "Web Development"
            ];
            return _courseOverviewCard(
              courseName: courseNames[index],
              studentsEnrolled: "${20 + index * 10} students enrolled",
              assignmentsPending: "${index + 2} assignments pending",
              onTap: () {
                Navigator.pushNamed(context, '/courseDetails');
              },
            );
          },
        ),
      ],
    );
  }

  // Interactive Course Card with Tap Animation
  Widget _courseOverviewCard({
    required String courseName,
    required String studentsEnrolled,
    required String assignmentsPending,
    required Function onTap,
  }) {
    return GestureDetector(
      onTap: () => onTap(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.purple.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(Icons.book, size: 40, color: Colors.blue),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    courseName,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    studentsEnrolled,
                    style: const TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Text(
                    assignmentsPending,
                    style: const TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _actionButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Allow horizontal scrolling
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _ctaButton("Start Learning", Icons.play_arrow, Colors.blue),
          _ctaButton("View Assignments", Icons.assignment, Colors.orange),
        ],
      ),
    );
  }

  // CTA Button with Hover Animation
  Widget _ctaButton(String label, IconData icon, Color color) {
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 15,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 10),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
