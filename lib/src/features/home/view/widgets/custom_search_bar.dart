import 'package:flutter/material.dart';
import 'package:ishla/src/core/constants/constant_variables.dart';
import 'package:get/get.dart';
import 'package:ishla/src/features/home/view/pages/filter_page.dart';
import 'package:ishla/src/features/home/view/pages/search_detail_page.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;

  const CustomSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.customOpacity(0.1),
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              onTap: () {
                Get.to(SearchDetailPage());
              },
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                hintText: 'Search',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            icon: Icon(Icons.tune, color: Colors.white),
            onPressed: () {
              Get.to(FilterPage());
            },
          ),
        ),
      ],
    );
  }
}
