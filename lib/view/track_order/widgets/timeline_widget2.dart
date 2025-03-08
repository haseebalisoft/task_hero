import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/track_order/delay_screen.dart';
import 'package:cocoon/view/track_order/widgets/end_process_bottom_sheet.dart';
import 'package:cocoon/view/track_order/widgets/timeline_card.dart';
import 'package:cocoon/view/track_order/widgets/timeline_widget.dart';

class TimelineWidget2 extends StatelessWidget {
  const TimelineWidget2({super.key});

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
              description: "Delayed Processing.",
              title: "Your service is delayed by 15 mins",
              timestamp: "09-01-2023 10:34 PM",
              remaining: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppButton.primary(
                    height: 32,
                    width: 96,
                    title: "End Now",
                    onPressed: () {
                      showEndProcessBottomSheet(context);
                    },
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
          const TimelineCard(
              indicator: DotIndicator(
                color: AppColors.orange,
              ),
              lineColor: AppColors.orange,
              content: TimelineContent(
                description: "Start service by clicking the button below.",
                title: "Start Service",
                timestamp: "09-01-2023 10:34 PM",
                titleColor: AppColors.orange,
              )),
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
            content: TimelineContent(
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
