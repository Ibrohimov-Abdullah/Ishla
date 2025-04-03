import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/data/models/job_model.dart';

class HomePageController extends GetxController {
  TextEditingController searchController = TextEditingController();

  final sampleJob = JobModel(
    id: '1',
    title: 'UX/UI Designer',
    companyName: 'Google',
    companyLogo: 'https://cdn4.iconfinder.com/data/icons/logos-brands-7/512/google_logo-google_icongoogle-512.png',
    jobDescription: 'Looking for a UX/UI designer with experience in Web design, Mobile design, and Prototyping tools. The ideal candidate will have strong visual design skills.',
    requirements: [
      'Bachelor\'s degree in Design, HCI, or related field',
      'At least 3 years of UX/UI design experience',
      'Proficient in design tools (Figma, Sketch, Adobe XD)',
      'Strong portfolio showcasing design work'
    ],
    responsibilities: [
      'Create wireframes, mockups, and prototypes',
      'Collaborate with product managers and engineers',
      'Conduct user research and usability testing',
      'Design visually appealing and user-friendly interfaces'
    ],
    location: 'San Francisco, CA',
    latitude: 37.7749,
    longitude: -122.4194,
    salary: '\$100,000 - \$130,000',
    experience: '3-5 years',
    jobType: 'Full-time',
    postedDate: DateTime.now().subtract(Duration(days: 2)),
    benefits: ['Health insurance', 'Dental & Vision', '401(k)', 'Remote work options'],
    technologies: ['Figma', 'Sketch', 'Adobe XD', 'InVision'],
  );
}
