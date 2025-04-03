import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishla/src/features/home/controller/home_page_controller.dart';
import 'package:ishla/src/features/connection/view/pages/connection_detail_page.dart';
import 'package:ishla/src/features/home/view/widgets/custom_search_bar.dart';
import 'package:ishla/src/features/home/view/widgets/section_title_widget.dart';
import 'package:get/get.dart';

import '../widgets/banner_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/job_listing_widget.dart';
import 'home_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomePageController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with greeting and profile pic
              const HeaderWidget(),
              SizedBox(height: 20.h),

              // Search Bar Widget
              CustomSearchBar(controller: controller.searchController),
              SizedBox(height: 25.h),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const PromotionalBannerWidget(),
                      SizedBox(height: 25.h),

                      // Recent Job List Text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SectionTitleWidget(title: 'Recent Job List'),
                        ],
                      ),
                      SizedBox(height: 15.h),

                      // Job Listing
                      JobListingWidget(
                        jobTitle: 'Product Designer',
                        company: 'Google Inc.',
                        location: 'California, USA',
                        salary: '\$15K',
                        salaryPeriod: '/month',
                        jobType: 'Full time',
                        companyIcon: Icons.apple,
                        // Use any other icon if needed
                        companyIconColor: Colors.black,
                        onPressed: () {
                          Get.to(
                            JobDescriptionPage(
                              job: controller.sampleJob,
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 15.h),
                      JobListingWidget(
                        jobTitle: 'Web Designer',
                        company: 'Prada Inc.',
                        location: 'New York, USA',
                        salary: '\$20K',
                        salaryPeriod: '/month',
                        jobType: 'Part time',
                        companyIcon: Icons.join_full,
                        // Use any other icon if needed
                        companyIconColor: Colors.black,
                        onPressed: () {},
                      ),
                      SizedBox(height: 15.h),
                      JobListingWidget(
                        jobTitle: 'Flutter Developer',
                        company: 'Google Inc.',
                        location: 'New York, USA',
                        salary: '\$25K',
                        salaryPeriod: '/month',
                        jobType: 'Part time',
                        companyIcon: Icons.flutter_dash,
                        // Use any other icon if needed
                        companyIconColor: Colors.black,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              // Promotional Banner
            ],
          ),
        ),
      ),
    );
  }
}
