import 'package:cocoon/res/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CompleteProfileCard extends StatelessWidget {
  final String text;

  const CompleteProfileCard({super.key, this.text = "Complete profile setup"});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        border: const Border(
            top: BorderSide(
          width: 6,
          color: AppColors.p1,
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: AppColors.black1,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColors.black1,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
