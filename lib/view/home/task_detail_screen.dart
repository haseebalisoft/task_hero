import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/widgets/detail_task_card.dart';
import 'package:cocoon/view/home/widgets/level_card.dart';
import 'package:cocoon/view/home/widgets/user_card.dart';
import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Text(
          "Service Request",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            UserCard(),
            15.h,
            DetailTaskCard(
              title: "Shoe Repair",
              description: "I will clean your house...",
              price: "\$25/hr",
              actionText: "View Service",
              imageUrl: "assets/images/shose.png",
              onTap: () {},
              bgColor: Colors.white,
            ),
            20.h,
            const LevelCard(),
            20.h,
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "29 Park Road, Central Park, London, UK",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9E9E9E)),
                  ),
                  10.h,
                  SvgPicture.asset("assets/icons/map.svg"),
                  10.h,
                ],
              ),
            ),
            20.h,
          ],
        ),
      ),
    );
  }
}
