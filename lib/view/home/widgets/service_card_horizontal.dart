import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/view/home/boost_service_screen.dart';
import 'package:cocoon/view/home/service_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceCardHorizontal extends StatelessWidget {
  final String imageUrl;
  final double rating;
  final String ratingCount;
  final String title;
  final String description;
  final String price;
  final VoidCallback onBoostTap;

  final bool showButton;

  const ServiceCardHorizontal({
    super.key,
    required this.imageUrl,
    required this.rating,
    required this.ratingCount,
    required this.title,
    required this.description,
    required this.price,
    required this.onBoostTap,
    this.showButton = true,
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
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imageUrl,
                    height: 110,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: Colors.yellow[700], size: 16),
                            const SizedBox(width: 4),
                            Text(
                              rating.toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
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
                        const SizedBox(height: 4),
                        Text(
                          description,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text.rich(
                            TextSpan(
                              text: "From ",
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 12),
                              children: [
                                TextSpan(
                                  text: price,
                                  style: const TextStyle(
                                    color: AppColors.p1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
            showButton
                ? SizedBox(
                    width: double.infinity,
                    height: 32,
                    child: ElevatedButton.icon(
                      onPressed: onBoostTap,
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
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
