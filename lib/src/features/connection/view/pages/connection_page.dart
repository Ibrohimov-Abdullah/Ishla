import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompaniesFollowPage extends StatelessWidget {
  const CompaniesFollowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Column(
            children: [
              // Grid of companies
              Expanded(
                child: CompaniesGrid(),
              ),

              // Bottom action buttons
              SizedBox(height: 15.h),
              BottomActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

class CompaniesGrid extends StatelessWidget {
  CompaniesGrid({Key? key}) : super(key: key);

  final List<CompanyData> companies = [
    CompanyData(
      name: 'Google Inc',
      logoColor: Colors.amber,
      logoIcon: 'G',
      followers: '1M',
    ),
    CompanyData(
      name: 'Dribbble Inc',
      logoColor: Colors.pink,
      logoIcon: '🏀',
      followers: '1M',
    ),
    CompanyData(
      name: 'Twitter Inc',
      logoColor: Colors.blue,
      logoIcon: '🐦',
      followers: '1M',
    ),
    CompanyData(
      name: 'Apple Inc',
      logoColor: Colors.grey[800]!,
      logoIcon: '🍎',
      followers: '1M',
    ),
    CompanyData(
      name: 'Facebook Inc',
      logoColor: Colors.indigo,
      logoIcon: 'f',
      followers: '1M',
    ),
    CompanyData(
      name: 'Microsoft Inc',
      logoColor: Colors.transparent,
      logoIcon: '🪟',
      followers: '1M',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.1,
        crossAxisSpacing: 15.w,
        mainAxisSpacing: 15.h,
      ),
      itemCount: companies.length,
      itemBuilder: (context, index) {
        return CompanyCard(company: companies[index]);
      },
    );
  }
}

class CompanyCard extends StatelessWidget {
  final CompanyData company;

  const CompanyCard({
    Key? key,
    required this.company,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Company Logo
          buildCompanyLogo(),
          SizedBox(height: 10.h),

          // Company Name
          Text(
            company.name,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 3.h),

          // Followers
          Text(
            '${company.followers} Followers',
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 10.h),

          // Follow Button
          Container(
            width: 100.w,
            height: 30.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Center(
              child: Text(
                'Follow',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCompanyLogo() {
    Widget logoWidget;

    // Create custom logos for each company
    switch (company.name) {
      case 'Google Inc':
        logoWidget = buildColorfulLogo([
          Colors.red,
          Colors.yellow,
          Colors.green,
          Colors.blue,
        ], 'G');
        break;
      case 'Dribbble Inc':
        logoWidget = Container(
          width: 50.w,
          height: 50.w,
          decoration: BoxDecoration(
            color: company.logoColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.sports_basketball,
            color: Colors.white,
            size: 24.sp,
          ),
        );
        break;
      case 'Twitter Inc':
        logoWidget = Container(
          width: 50.w,
          height: 50.w,
          decoration: BoxDecoration(
            color: company.logoColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.flutter_dash,  // Using this as a Twitter-like icon
            color: Colors.white,
            size: 24.sp,
          ),
        );
        break;
      case 'Apple Inc':
        logoWidget = Container(
          width: 50.w,
          height: 50.w,
          decoration: BoxDecoration(
            color: company.logoColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.apple,
            color: Colors.white,
            size: 24.sp,
          ),
        );
        break;
      case 'Facebook Inc':
        logoWidget = Container(
          width: 50.w,
          height: 50.w,
          decoration: BoxDecoration(
            color: company.logoColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              'f',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
        break;
      case 'Microsoft Inc':
        logoWidget = Container(
          width: 50.w,
          height: 50.w,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey[200]!),
          ),
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(12.w),
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
              Container(color: Colors.yellow),
            ],
          ),
        );
        break;
      default:
      // Generic logo for any other company
        logoWidget = Container(
          width: 50.w,
          height: 50.w,
          decoration: BoxDecoration(
            color: company.logoColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              company.logoIcon,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
    }

    return logoWidget;
  }

  Widget buildColorfulLogo(List<Color> colors, String text) {
    return Container(
      width: 50.w,
      height: 50.w,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: CustomPaint(
        painter: GoogleLogoPainter(colors),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class GoogleLogoPainter extends CustomPainter {
  final List<Color> colors;

  GoogleLogoPainter(this.colors);

  @override
  void paint(Canvas canvas, Size size) {
    // Simplified Google-like color wheel
    final Paint paint = Paint()
      ..style = PaintingStyle.fill;

    final double radius = size.width / 2;
    final Rect rect = Rect.fromCircle(
      center: Offset(radius, radius),
      radius: radius,
    );

    // Draw segments of the colorful circle
    for (int i = 0; i < colors.length; i++) {
      final double startAngle = i * (3.14159 * 2 / colors.length);
      final double sweepAngle = 3.14159 * 2 / colors.length;

      paint.color = colors[i];
      canvas.drawArc(rect, startAngle, sweepAngle, true, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class BottomActionButtons extends StatelessWidget {
  const BottomActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Posting button
        Expanded(
          child: Container(
            height: 50.h,
            decoration: BoxDecoration(
              color: Colors.purple[100],
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Center(
              child: Text(
                'Posting',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 15.w),

        // My Connection button
        Expanded(
          child: Container(
            height: 50.h,
            decoration: BoxDecoration(
              color: const Color(0xFF130160),  // Deep blue/purple color
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Center(
              child: Text(
                'My connection',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CompanyData {
  final String name;
  final Color logoColor;
  final String logoIcon;
  final String followers;

  CompanyData({
    required this.name,
    required this.logoColor,
    required this.logoIcon,
    required this.followers,
  });
}