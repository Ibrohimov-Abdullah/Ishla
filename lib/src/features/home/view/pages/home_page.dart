import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobSearchHomePage extends StatelessWidget {
  const JobSearchHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with greeting and profile pic
              const HeaderWidget(),
              SizedBox(height: 20.h),

              // Promotional Banner
              const PromotionalBannerWidget(),
              SizedBox(height: 25.h),

              // Find Your Job Text
              SectionTitleWidget(title: 'Find Your Job'),
              SizedBox(height: 15.h),

              // Job Type Cards
              const JobTypesGridWidget(),
              SizedBox(height: 25.h),

              // Recent Job List Text
              SectionTitleWidget(title: 'Recent Job List'),
              SizedBox(height: 15.h),

              // Job Listing
              const JobListingWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black87,
              ),
            ),
            Text(
              'Orlando Diggs.',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Container(
          width: 40.w,
          height: 40.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}

class SectionTitleWidget extends StatelessWidget {
  final String title;

  const SectionTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class PromotionalBannerWidget extends StatelessWidget {
  const PromotionalBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.h,
      decoration: BoxDecoration(
        color: const Color(0xFF4B39EF),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          // Text content
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '50% off',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'take any courses',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      'Join Now',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Woman image
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomRight,
            ),
          ),
        ],
      ),
    );
  }
}

class JobTypesGridWidget extends StatelessWidget {
  const JobTypesGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First row with Remote Job and Full Time
        Row(
          children: [
            // Remote Job Card
            Expanded(
              child: JobTypeCardWidget(
                title: 'Remote Job',
                number: '44.5k',
                color: Colors.blue[100]!,
                icon: Icons.computer,
              ),
            ),
            SizedBox(width: 15.w),

            // Full Time Card
            Expanded(
              child: JobTypeCardWidget(
                title: 'Full Time',
                number: '66.8k',
                color: Colors.purple[100]!,
                icon: Icons.work,
              ),
            ),
          ],
        ),
        SizedBox(height: 15.h),

        // Second row with Part Time and empty space
        Row(
          children: [
            // Part Time Card
            Expanded(
              child: JobTypeCardWidget(
                title: 'Part Time',
                number: '38.9k',
                color: Colors.pink[100]!,
                icon: Icons.access_time,
              ),
            ),
            SizedBox(width: 15.w),

            // Empty space to match layout
            Expanded(child: Container()),
          ],
        ),
      ],
    );
  }
}

class JobTypeCardWidget extends StatelessWidget {
  final String title;
  final String number;
  final Color color;
  final IconData icon;

  const JobTypeCardWidget({
    Key? key,
    required this.title,
    required this.number,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.all(15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: 24.sp,
            color: Colors.black54,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                number,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class JobListingWidget extends StatelessWidget {
  const JobListingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.all(15.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Company logo
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Center(
              child: Icon(
                Icons.apple,
                size: 24.sp,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(width: 15.w),

          // Job details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Designer',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  'Google Inc. · California, USA',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Text(
                      '\$15K',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      '/month',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Text(
                        'Full time',
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Bookmark and Apply
          Column(
            children: [
              Icon(
                Icons.bookmark_border,
                size: 22.sp,
                color: Colors.grey[700],
              ),
              SizedBox(height: 15.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Text(
                  'Apply',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
