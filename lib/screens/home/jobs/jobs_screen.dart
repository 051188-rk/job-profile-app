import 'package:flutter/material.dart';
import 'job_detail_screen.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy job data
    final List<Map<String, dynamic>> jobs = [
      {
        'title': 'Senior Flutter Developer',
        'company': 'Tech Solutions Inc.',
        'location': 'Remote',
        'salary': '\$80,000 - \$120,000',
        'type': 'Full-time',
      },
      {
        'title': 'Product Manager',
        'company': 'Innovate Corp',
        'location': 'New York, NY',
        'salary': '\$90,000 - \$130,000',
        'type': 'Full-time',
      },
      {
        'title': 'UX Designer',
        'company': 'Design Studio',
        'location': 'San Francisco, CA',
        'salary': '\$70,000 - \$100,000',
        'type': 'Full-time',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Opportunities'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(
                job['title'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(job['company']),
                  Text(job['location']),
                  Row(
                    children: [
                      Text(job['salary']),
                      const SizedBox(width: 8),
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
                          job['type'],
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JobDetailScreen(job: job),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
} 