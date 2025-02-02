// courses_page.dart

import 'package:flutter/material.dart';
import 'package:edu_connect_app/widgets/bottom_navigation.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              const Text(
                "Find Your Course",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search by name or category...",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 20),

              // Enrolled Courses Section
              const Text(
                "Enrolled Courses",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3, // Example: 3 enrolled courses
                itemBuilder: (context, index) {
                  return _courseCard(
                    courseName: "Course ${index + 1}",
                    progress: "${(index + 1) * 20}%", // Example progress
                    isEnrolled: true,
                    onTap: () {
                      // Navigate to course details page
                    },
                  );
                },
              ),
              const SizedBox(height: 20),

              // Recommended Courses Section
              const Text(
                "Recommended Courses",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2, // Example: 2 recommended courses
                itemBuilder: (context, index) {
                  return _courseCard(
                    courseName: "Recommended Course ${index + 1}",
                    progress: "Not Started",
                    isEnrolled: false,
                    onTap: () {
                      // Navigate to course details or enrollment page
                    },
                  );
                },
              ),
              const SizedBox(height: 20),

              // Explore More Button
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    // Add navigation to explore all available courses
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Explore More Courses",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Removed the uppermost bottom navigation widget
    );
  }

  // Widget: Course Card
  Widget _courseCard({
    required String courseName,
    required String progress,
    required bool isEnrolled,
    required Function onTap,
  }) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                isEnrolled ? Icons.check_circle : Icons.school,
                size: 40,
                color: isEnrolled ? Colors.green : Colors.blue,
              ),
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
                      progress,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
