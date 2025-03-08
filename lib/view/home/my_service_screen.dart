import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/boost_service_screen.dart';
import 'package:cocoon/view/home/widgets/complete_profile_card.dart';
import 'package:cocoon/view/home/widgets/home_card_horizontal.dart';
import 'package:cocoon/view/home/widgets/service_card_horizontal.dart';
import 'package:cocoon/view/home/widgets/service_card_type1.dart';
import 'package:cocoon/view/home/widgets/service_card_type2.dart';
import 'package:cocoon/view/user_verification/widgets/custom_tag.dart';
import 'package:flutter/material.dart';

class MyServiceScreen extends StatefulWidget {
  const MyServiceScreen({super.key});

  @override
  State<MyServiceScreen> createState() => _MyServiceScreenState();
}

class _MyServiceScreenState extends State<MyServiceScreen> {
  bool changeVersion = false;
  bool showServices = false;
  bool showSubmittedRequest = false;
  bool isShowInHorizontal = false;
  @override
  void initState() {
    v();
    super.initState();
  }

  v() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      changeVersion = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      showServices = true;
    });
  }

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
          "My Services",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/add.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/more.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: showServices == false
            ? changeVersion
                ? Column(
                    children: [
                      const CustomTag(
                        text:
                            "It seems like you don’t have any active service. Make a service to get started.",
                        icon: Icons.info_outline,
                        color: AppColors.p1,
                      ),
                      20.h,
                      AppButton.primary(
                        onPressed: () {},
                        width: double.infinity,
                        title: "    Create a Service",
                        elevation: 0,
                        height: 50,
                        background: AppColors.p1,
                      ),
                      SvgPicture.asset("assets/icons/empty2.svg"),
                      20.h,
                      const Text(
                        "Empty List",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: AppColors.black1,
                        ),
                      ),
                      12.h,
                      const Text(
                        "Looks like you don't have any task in progress.\nCreate a new task by clicking the button below.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.black1,
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        child: CustomTag(
                          color: Color(0xFFFF0000),
                          icon: Icons.info_outline,
                          text:
                              "You haven’t completed profile setup to start giving services.",
                        ),
                      ),
                      20.h,
                      CompleteProfileCard()
                    ],
                  )
            : Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showSubmittedRequest = !showSubmittedRequest;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: 65,
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
                      child: Row(
                        children: [
                          const Text(
                            "Submitted Request",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColors.black1,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "3",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColors.yellow,
                            ),
                          ),
                          6.w,
                          Icon(showSubmittedRequest
                              ? Icons.keyboard_arrow_down_outlined
                              : Icons.keyboard_arrow_up_outlined)
                        ],
                      ),
                    ),
                  ),
                  20.h,
                  showSubmittedRequest
                      ? SizedBox(
                          height: 270,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                height: 260,
                                width: 200,
                                child: ServiceCardType2(
                                  imageUrl: "assets/images/clean.png",
                                  rating: 4.8,
                                  ratingCount: "900+",
                                  title: "Cleaning",
                                  description: "I will clean your house",
                                  price: "\$25/hr",
                                  onBoostTap: () {
                                    print("Boost button clicked");
                                  },
                                ),
                              );
                            },
                          ),
                        )
                      : const SizedBox(),
                  Row(
                    children: [
                      const Text(
                        "5 Services",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: AppColors.black1,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isShowInHorizontal = true;
                            });
                          },
                          child: SvgPicture.asset("assets/icons/list.svg")),
                      10.w,
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isShowInHorizontal = false;
                            });
                          },
                          child: SvgPicture.asset("assets/icons/grid.svg")),
                    ],
                  ),
                  20.h,
                  isShowInHorizontal
                      ? ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return ServiceCardHorizontal(
                              imageUrl: "assets/images/clean.png",
                              rating: 4.8,
                              ratingCount: "900+",
                              title: "Cleaning",
                              description: "I will clean your house...",
                              price: "\$25/hr",
                              onBoostTap: () {
                                Get.to(() => BoostServiceScreen());
                              },
                            );
                          },
                        )
                      : GridView.builder(
                          itemCount: 5,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 20,
                                  mainAxisExtent: 280),
                          itemBuilder: (context, index) {
                            return ServiceCardType1(
                              imageUrl: "assets/images/clean.png",
                              rating: 4.8,
                              ratingCount: "900+",
                              title: "Cleaning",
                              description: "I will clean your house",
                              price: "\$25/hr",
                              onBoostTap: () {
                                Get.to(() => BoostServiceScreen());
                              },
                            );
                          },
                        )
                ],
              ),
      ),
    );
  }
}
