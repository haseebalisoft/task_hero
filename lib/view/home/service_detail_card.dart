import 'package:cocoon/res/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ServiceDetailCard extends StatelessWidget {
  final String title;
  final String postedDate;
  final double rating;
  final String ratingCount;
  final String description;
  final List<String> imageUrls;

  const ServiceDetailCard({
    super.key,
    required this.title,
    required this.postedDate,
    required this.rating,
    required this.ratingCount,
    required this.description,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Posted: $postedDate",
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 12),

          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow[700], size: 18),
              const SizedBox(width: 4),
              Text(
                rating.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.p1,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                "($ratingCount)",
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Description
          Text(
            description,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 12),

          Row(
            children: imageUrls.map((url) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset(
                  url,
                  height: 102,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
