import '../../res/constants/app_colors.dart';
import '../../res/constants/imports.dart';
import '../home/widgets/task_card.dart';

class MyServicesHistory extends StatelessWidget {
  const MyServicesHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: SimpleAppBar(
          title: 'My Services History',
        ),
        body: Column(
          children: [
            TabBar(
                dividerColor: Colors.transparent,
                tabs: [
              Tab(text: 'Current',),
              Tab(text: 'Completed',),
            ]),
            16.h,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AppButton.primary(
                    onPressed: () {},
                    width: 60,
                    title: "All",
                    elevation: 0,
                    textColor: Colors.white,
                    height: 32,
                    background: AppColors.p1,
                  ),
                  10.w,
                  AppButton.outline(
                    onPressed: () {},
                    width: 100,
                    title: "Today",
                    elevation: 0,
                    borderColor: AppColors.p1,
                    height: 32,
                    background: Colors.white,
                  ),
                  10.w,
                  AppButton.outline(
                    onPressed: () {},
                    width: 100,
                    title: "Scheduled",
                    elevation: 0,
                    borderColor: AppColors.p1,
                    height: 32,
                    background: Colors.white,
                  ),
                  10.w,
                  AppButton.outline(
                    onPressed: () {},
                    width: 100,
                    title: "Unscheduled",
                    elevation: 0,
                    borderColor: AppColors.p1,
                    height: 32,
                    background: Colors.white,
                  ),

                ],
              ),
            ),
            20.h,

            Expanded(
              child: ListView.separated(itemBuilder: (context, index) => TaskCard(
                title: "Shoe Repair",
                dateTime: "12/19/2023 03:32 PM",
                status: "Completed",
                actionText: "See more",
                imageUrl: "assets/images/shose.png",
                onTap: () {},
                statusColor: Colors.green,
                bgColor: Colors.white,
              ), separatorBuilder: (context, index) => 16.h, itemCount: 3),
            )
          ],
        ).paddingSymmetric(horizontal: 20),
      ),
    );
  }
}
