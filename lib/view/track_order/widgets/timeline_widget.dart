import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/track_order/delay_screen.dart';
import 'package:cocoon/view/track_order/widgets/timeline_card.dart';

class TimelineWidget extends StatelessWidget {
  const TimelineWidget({super.key});

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
        children: [
          TimelineCard(
            indicator: const DotIndicator(),
            lineColor: Colors.blue,
            content: TimelineContent(
              description: "Service is processing.",
              title: "Processing",
              timestamp: "09-01-2023 10:34 PM",
              remaining: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppButton.primary(
                    height: 32,
                    width: 96,
                    title: "Start",
                  ),
                  const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text("Or"),
                  ),
                  AppButton.outline(
                    width: 100,
                    onPressed: () {
                      Get.to(() => DelayScreen());
                    },
                    title: "Add more time",
                    elevation: 0,
                    background: Colors.white,
                    height: 30,
                    borderColor: AppColors.p1,
                  ),
                ],
              ),
            ),
          ),
          20.h,
          TimelineCard(
            indicator: const DotIndicator(),
            lineColor: Colors.blue,
            content: TimelineContent(
              description: "Start service by clicking the button below.",
              title: "Start Service",
              timestamp: "09-01-2023 10:34 PM",
              remaining: AppButton.primary(
                height: 32,
                width: 96,
                background: Colors.grey[200],
                title: "Start",
                textColor: Colors.grey[600],
              ),
            ),
          ),
          20.h,
          const TimelineCard(
            indicator: DotIndicator(),
            lineColor: Colors.blue,
            content: const TimelineContent(
              description: "You have accepted this service request.",
              title: "Accepted",
              timestamp: "09-01-2023 10:34 PM",
            ),
          ),
        ],
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, this.color = AppColors.p1});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class TimelineContent extends StatelessWidget {
  final String title;
  final String description;
  final String timestamp;
  final Widget? remaining;
  final Color titleColor;

  const TimelineContent({
    super.key,
    required this.title,
    required this.description,
    required this.timestamp,
    this.remaining,
    this.titleColor = AppColors.p1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            timestamp,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          if (remaining != null) ...[
            const SizedBox(height: 8),
            remaining!,
          ],
        ],
      ),
    );
  }
}
