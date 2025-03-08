import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/track_order/delay_screen.dart';
import 'package:cocoon/view/track_order/see_images_screen.dart';
import 'package:cocoon/view/track_order/widgets/end_process_bottom_sheet.dart';
import 'package:cocoon/view/track_order/widgets/end_process_bottom_sheet2.dart';
import 'package:cocoon/view/track_order/widgets/timeline_card.dart';
import 'package:cocoon/view/track_order/widgets/timeline_widget.dart';

class TimelineWidget3 extends StatelessWidget {
  const TimelineWidget3({super.key});

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
              description: "Service is under processing.",
              title: "Processing",
              timestamp: "09-01-2023 10:34 PM",
              remaining: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppButton.primary(
                    height: 32,
                    width: 96,
                    title: "End Now",
                    onPressed: () {
                      showEndProcessBottomSheet2(context);
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
          TimelineCard(
            indicator: const DotIndicator(),
            lineColor: Colors.blue,
            content: TimelineContent(
              description: "Start service by clicking button.",
              title: "Start Service",
              timestamp: "09-01-2023 10:34 PM",
              remaining: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppButton.primary(
                    height: 32,
                    width: 110,
                    title: "Start Service",
                    onPressed: () {},
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
              description:
                  "Scan code on the package label to confirm you have received the package.",
              title: "Received Package",
              timestamp: "09-01-2023 10:34 PM",
              remaining: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppButton.primary(
                    height: 32,
                    width: 150,
                    title: "Scan Code to Confirm",
                    onPressed: () {},
                  ),
                  20.h,
                  AppButton.outline(
                    width: 110,
                    onPressed: () {
                      Get.to(() => const SeeImagesScreen());
                    },
                    title: "See Images",
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
              indicator: DotIndicator(),
              content: TimelineContent(
                description: "Package is on its way to you.",
                title: "In transit",
                timestamp: "09-01-2023 10:34 PM",
              )),
          20.h,
          const TimelineCard(
            indicator: DotIndicator(),
            lineColor: Colors.blue,
            content: TimelineContent(
              description: "Customer is preparing the to be mail.",
              title: "Preparing for Mail",
              timestamp: "09-01-2023 10:34 PM",
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
