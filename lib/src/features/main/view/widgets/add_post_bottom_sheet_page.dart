import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/add_post_controller.dart';

class AddPostBottomSheet extends StatelessWidget {
  final AddPostController controller = Get.put(AddPostController());

  AddPostBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, size: 24.sp),
                onPressed: () => Get.back(),
              ),
              Expanded(
                child: Text(
                  'Add Post',
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: 40.w),
            ],
          ),
          SizedBox(height: 16.h),
          CircleAvatar(
            radius: 30.r,
            backgroundColor: Colors.grey[200],
            child: Icon(Icons.person, size: 30.sp, color: Colors.black),
          ),
          SizedBox(height: 8.h),
          Text(
            'Orlando Diggs',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          Text(
            'California, USA',
            style: TextStyle(fontSize: 12.sp, color: Colors.grey),
          ),
          SizedBox(height: 16.h),
          TextField(
            onChanged: controller.updatePostTitle,
            decoration: InputDecoration(
              hintText: 'Write the title of your post here',
              hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: Colors.grey[300]!),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          TextField(
            onChanged: controller.updatePostDescription,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'What do you want to talk about?',
              hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: Colors.grey[300]!),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  minimumSize: Size(150.w, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Text(
                  'Create a post',
                  style: TextStyle(fontSize: 14.sp, color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: controller.navigateToAddJob,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[100],
                  minimumSize: Size(150.w, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Text(
                  'Make a job',
                  style: TextStyle(fontSize: 14.sp, color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}