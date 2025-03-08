import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/view/home/boost_service_screen.dart';
import 'package:cocoon/view/home/service_detail_card.dart';
import 'package:cocoon/view/home/service_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceCardType1 extends StatelessWidget {
  final String imageUrl;
  final double rating;
  final String ratingCount;
  final String title;
  final String description;
  final String price;
  final VoidCallback onBoostTap;

  const ServiceCardType1({
    super.key,
    required this.imageUrl,
    required this.rating,
    required this.ratingCount,
    required this.title,
    required this.description,
    required this.price,
    required this.onBoostTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const ServiceDetailScreen());
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6,
              spreadRadius: 2,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular((12)),
              child: Image.asset(
                imageUrl,
                height: 123,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.star, color: AppColors.yellow, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        rating.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "($ratingCount)",
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),

                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 5),
                  // Price
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text.rich(
                      TextSpan(
                        text: "From ",
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                        children: [
                          TextSpan(
                            text: price,
                            style: const TextStyle(
                              color: AppColors.p1,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),

                  SizedBox(
                    width: double.infinity,
                    height: 35,
                    child: ElevatedButton.icon(
                      onPressed: onBoostTap,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.p1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      icon: const Icon(Icons.flash_on,
                          color: Colors.white, size: 16),
                      label: const Text(
                        "Boost",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
