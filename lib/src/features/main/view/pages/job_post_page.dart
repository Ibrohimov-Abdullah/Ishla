import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ishla/src/core/constants/constant_variables.dart';
import '../../controller/job_post_page_controller.dart';

class JobPostPage extends StatelessWidget {
  final JobPostController controller = Get.put(JobPostController());

  JobPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              color: Colors.blue[900],
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 24.sp, color: Colors.black),
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Orlando Diggs',
                        style: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Find your dream job here!',
                        style: TextStyle(fontSize: 12.sp, color: Colors.white70),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.notifications, size: 24.sp, color: Colors.white),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: SearchBar()),
                        SizedBox(width: 8.w),
                        IconButton(
                          icon: Icon(Icons.filter_list, size: 24.sp, color: Colors.orange),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Specialization',
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.h),
                    Expanded(
                      child: Obx(
                            () => GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16.w,
                            mainAxisSpacing: 16.h,
                            childAspectRatio: 1.2,
                          ),
                          itemCount: controller.specializations.length,
                          itemBuilder: (context, index) {
                            final spec = controller.specializations[index];
                            return SpecializationCard(
                              name: spec['name']!,
                              jobs: spec['jobs']!,
                              color: spec['color'] as int,
                              icon: spec['icon'] as IconData,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: ElevatedButton(
                onPressed: () => controller.showAddPostBottomSheet(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  minimumSize: Size(double.infinity, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Text(
                  'Create Post',
                  style: TextStyle(fontSize: 16.sp, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Search Bar Widget
class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<JobPostController>();
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.customOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        onChanged: controller.updateSearchQuery,
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
          prefixIcon: Icon(Icons.search, size: 20.sp, color: Colors.grey),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        ),
      ),
    );
  }
}

// Specialization Card Widget
class SpecializationCard extends StatelessWidget {
  final String name;
  final String jobs;
  final int color;
  final IconData icon;

  const SpecializationCard({
    required this.name,
    required this.jobs,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.customOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: Colors.white.customOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 20.sp,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            name,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4.h),
          Text(
            jobs,
            style: TextStyle(fontSize: 12.sp, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}