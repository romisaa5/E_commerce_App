import 'package:e_commerce/Featured/onboarding/presentation/views/widgets/custom_indecetor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PageIndicator extends StatelessWidget {
  final int currentIndex; 
  final int totalPages; 

  const PageIndicator({super.key, required this.currentIndex, required this.totalPages});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: CustomIndecetor(isActive: index == currentIndex),
        ),
      ),
    );
  }
}