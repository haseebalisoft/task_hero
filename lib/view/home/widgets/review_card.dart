import 'package:cocoon/res/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0x15060F14),
            blurRadius: 6,
            spreadRadius: 1,
            offset: Offset(0, 0),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                '956 reviews for this tasker',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black1),
              ),
              Spacer(),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  SizedBox(width: 4),
                  Text(
                    '4.3',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.p1),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '(900+)',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          const SizedBox(height: 16),
          _buildRatingRow('5 stars', 0.8, 230),
          _buildRatingRow('4 stars', 0.5, 52),
          _buildRatingRow('3 stars', 0.1, 21),
          _buildRatingRow('2 stars', 0.05, 6),
          _buildRatingRow('1 stars', 0.02, 1),
        ],
      ),
    );
  }

  Widget _buildRatingRow(String label, double barFraction, int count) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.black1,
              ),
            ),
          ),
          Expanded(
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              value: barFraction,
              backgroundColor: Colors.grey[200],
              color: Colors.blue,
              minHeight: 6,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '($count)',
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
