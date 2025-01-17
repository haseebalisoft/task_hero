// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/view/home/scheduled_task_screen.dart';
import 'package:cocoon/view/home/task_screen.dart';
import 'package:cocoon/view/home/widgets/home_card_horizontal.dart';
import 'package:cocoon/view/home/widgets/home_container.dart';
import 'package:cocoon/view/home/widgets/offer_bottom_sheet.dart';
import 'package:cocoon/view/home/widgets/task_card.dart';
import 'package:cocoon/view/home/widgets/user_title_card.dart';

import '../../res/constants/imports.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool temp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/icons/logo.svg",
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              const UserTitleCard(
                userName: "John Doe",
                userRole: "Food Hero",
                profileImageUrl: "assets/images/user.png",
              ),
              20.h,
              Row(children: [
                Expanded(
                  child: HomeMainContainer(
                    color: AppColors.p1,
                    t1: "Tasks",
                    t2: "0 active",
                    t1Color: Colors.white,
                    t2Color: Colors.white,
                    onTap: () {
                      Get.to(() => const TaskScreen());
                    },
                  ),
                ),
                10.w,
                Expanded(
                  child: HomeMainContainer(
                    color: Colors.white,
                    t1: "My services",
                    t2: "4",
                    t1Color: AppColors.p1,
                    t2Color: AppColors.p1,
                    onTap: () {},
                  ),
                ),
              ]),
              20.h,
              HomeCardHorizontal(
                color: Colors.white,
                t1: "Offers",
                t2: "●",
                t1Color: AppColors.p1,
                t2Color: AppColors.p1,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) => const OffersBottomSheet(),
                  );
                },
              ),
              20.h,
              HomeCardHorizontal(
                color: Colors.white,
                t1: "Scheduled Tasks",
                t2: "0",
                t1Color: AppColors.orange,
                t2Color: AppColors.orange,
                onTap: () {
                  Get.to(() => const ScheduledTaskScreen());
                },
              ),
              20.h,
              Row(
                children: [
                  const Text(
                    "Active Tasks",
                    style: TextStyle(
                        color: AppColors.black1,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  const Spacer(),
                  SvgPicture.asset("assets/icons/more.svg"),
                ],
              ),
              10.h,
              temp == true
                  ? TaskCard(
                      bgColor: AppColors.p1.withOpacity(0.2),
                      title: "Shoe Repair",
                      dateTime: "12/19/2023 03:32 PM",
                      status: "Accepted",
                      actionText: "Action Required",
                      imageUrl: "assets/images/shose.png",
                      onTap: () {},
                    )
                  : Column(
                      children: [
                        40.h,
                        SvgPicture.asset("assets/icons/npt.svg"),
                        40.h,
                        AppButton.primary(
                          width: 190,
                          onPressed: () {
                            setState(() {
                              temp = true;
                            });
                          },
                          title: "New Requests",
                          elevation: 0,
                          background: AppColors.p1.withOpacity(0.1),
                          textColor: AppColors.p1,
                        ),
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
