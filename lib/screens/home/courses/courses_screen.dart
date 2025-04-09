import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy course data
    final List<Map<String, dynamic>> courses = [
      {
        'title': 'Flutter Development',
        'instructor': 'John Doe',
        'duration': '8 weeks',
        'level': 'Intermediate',
        'rating': 4.8,
      },
      {
        'title': 'UI/UX Design',
        'instructor': 'Jane Smith',
        'duration': '6 weeks',
        'level': 'Beginner',
        'rating': 4.5,
      },
      {
        'title': 'Data Science',
        'instructor': 'Mike Johnson',
        'duration': '12 weeks',
        'level': 'Advanced',
        'rating': 4.9,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Courses'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course['title'],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Instructor: ${course['instructor']}',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.timer, color: Colors.grey.shade600),
                      const SizedBox(width: 8),
                      Text(course['duration']),
                      const SizedBox(width: 16),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          course['level'],
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(course['rating'].toString()),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement course enrollment
                      },
                      child: const Text('Enroll Now'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
} 