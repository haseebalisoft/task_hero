import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/service_detail_screen.dart';
import 'package:cocoon/view/home/widgets/service_card_horizontal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoostServiceScreen extends StatefulWidget {
  BoostServiceScreen({super.key});

  @override
  State<BoostServiceScreen> createState() => _BoostServiceScreenState();
}

class _BoostServiceScreenState extends State<BoostServiceScreen> {
  bool changeBoostStyle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        centerTitle: false,
        title: const Text(
          "Boost your Service",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/more.svg"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            ServiceCardHorizontal(
              showButton: false,
              imageUrl: "assets/images/clean.png",
              rating: 4.8,
              ratingCount: "900+",
              title: "Cleaning",
              description: "I will clean your house...",
              price: "\$25/hr",
              onBoostTap: () {
                Get.to(() => const ServiceDetailScreen());
              },
            ),
            20.h,
            const Row(
              children: [
                Text(
                  "Boost Cost",
                  style: TextStyle(
                      color: AppColors.black1,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Spacer(),
                Text(
                  "\$3.5/Week",
                  style: TextStyle(
                      color: AppColors.p1,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                )
              ],
            ),
            10.h,
            const Row(
              children: [
                Text(
                  "Boost Cost",
                  style: TextStyle(
                      color: AppColors.black1,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Spacer(),
                Text(
                  "\$10.5/Month",
                  style: TextStyle(
                      color: AppColors.p1,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                )
              ],
            ),
            20.h,
            changeBoostStyle
                ? SizedBox(
                    width: double.infinity,
                    height: 32,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          changeBoostStyle = !changeBoostStyle;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: const BorderSide(
                                color: AppColors.p1, width: 1)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                      ),
                      icon: const Icon(Icons.flash_on,
                          color: AppColors.orange, size: 16),
                      label: const Text(
                        "Cancel Boost",
                        style: TextStyle(color: AppColors.p1),
                      ),
                    ),
                  )
                : SizedBox(
                    width: double.infinity,
                    height: 32,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          changeBoostStyle = !changeBoostStyle;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.p1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                      ),
                      icon: const Icon(Icons.flash_on,
                          color: Colors.white, size: 16),
                      label: const Text(
                        "Boost",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
