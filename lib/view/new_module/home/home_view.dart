import 'package:cocoon/res/constants/imports.dart';

import '../track_order/track_order_screen.dart';

class NHomeView extends StatelessWidget {
  const NHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.h,
              SvgPicture.asset(
                Assets.icons.logo,
                color: context.primary,
                width: 180,
              ),
              20.h,
              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: context.primary,
                        ),
                        8.w,
                        Text(
                          'Home',
                          style: context.headlineMedium!
                              .copyWith(color: context.primary),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: context.primary,
                        ),
                        4.w,
                        Container(
                          height: 20,
                          width: 1,
                          color: context.lightGrey,
                        ),
                        4.w,
                        Icon(
                          Icons.language,
                          color: context.primary,
                        ),
                        4.w,
                        Text(
                          'ENG',
                          style: context.headlineMedium!
                              .copyWith(color: context.primary),
                        )
                      ],
                    )
                  ],
                ).paddingAll(18),
              ),
              18.h,
              CustomTextField(
                hintText: 'Search',
                prefixIcon: Assets.icons.search,
              ),
              150.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 8,
                    width: 30,
                    decoration: BoxDecoration(
                        color: context.primary,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  5.w,
                  Container(
                    height: 8,
                    width: 10,
                    decoration: BoxDecoration(
                        color: context.grey,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  5.w,
                  Container(
                    height: 8,
                    width: 10,
                    decoration: BoxDecoration(
                        color: context.grey,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  5.w,
                  Container(
                    height: 8,
                    width: 10,
                    decoration: BoxDecoration(
                        color: context.grey,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  5.w,
                  Container(
                    height: 8,
                    width: 10,
                    decoration: BoxDecoration(
                        color: context.grey,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ],
              ),
              30.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: context.headlineMedium,
                  ),
                  Text(
                    'Categories',
                    style: context.headlineMedium!
                        .copyWith(color: context.primary),
                  ),
                ],
              ),
              10.h,
              SizedBox(
                height: 120,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [Text('Clothes and Shoes')],
                          ).paddingAll(8),
                        ),
                    separatorBuilder: (context, index) => 10.w,
                    itemCount: 10),
              ),
              30.h,
              Text(
                'Track Order',
                style: context.headlineMedium,
              ),
              10.h,
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Get.to(() => const TrackOrderScreen());
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  90.w,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Double Sausage and Egg Muffin',
                                        style: context.headlineMedium,
                                      ),
                                      Text(
                                        '12/19/2023 03:32 PM',
                                        style: context.bodySmall,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Status:  ',
                                            style: context.bodyLarge,
                                          ),
                                          Text(
                                            'Processing: ',
                                            style: context.bodyLarge!.copyWith(
                                                color: context.primary),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                color: context.extraLightGrey,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'See more',
                                    style: context.bodyMedium!
                                        .copyWith(color: context.primary),
                                  ),
                                  SvgPicture.asset(Assets.icons.arrowRight)
                                ],
                              )
                            ],
                          ).paddingAll(10),
                        ),
                      ),
                  separatorBuilder: (context, index) => 12.h,
                  itemCount: 3),
              20.h,
              Text(
                'Featured Eatables',
                style: context.headlineMedium,
              ),
              10.h,
              SizedBox(
                height: 185,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => SizedBox(
                          width: 120,
                          child: Card(
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: context.extraLightGrey,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      width: 90,
                                      height: 70,
                                    ),
                                    Positioned(
                                      top: 3,
                                      left: 3,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: context.primary,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        padding: EdgeInsets.all(3),
                                        child: Text(
                                          'Featured',
                                          style: context.bodyMedium!.copyWith(
                                              color: context.onPrimary),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                5.h,
                                Text(
                                  'Double Sausage and Egg Muffin',
                                  style: context.headlineMedium!
                                      .copyWith(color: context.onSecondary),
                                ),
                                5.h,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$5.3',
                                      style: context.bodyLarge!
                                          .copyWith(color: context.primary),
                                    ),
                                    5.w,
                                    Text(
                                      '551 kcal',
                                      style: context.bodyLarge!
                                          .copyWith(color: context.grey),
                                    ),
                                  ],
                                )
                              ],
                            ).paddingAll(10),
                          ),
                        ),
                    separatorBuilder: (context, index) => 12.h,
                    itemCount: 3),
              ),
              20.h,
              Text(
                'Popular heroes in your region',
                style: context.headlineMedium,
              ),
              10.h,
              SizedBox(
                height: 210,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => SizedBox(
                          width: 140,
                          child: PopularHerosCard(),
                        ),
                    separatorBuilder: (context, index) => 12.h,
                    itemCount: 3),
              ),
              30.h,
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Card(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      width: 90,
                                      height: 70,
                                    ),
                                    Positioned(
                                      top: 3,
                                      left: 3,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: context.onSecondary,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        padding: EdgeInsets.all(3),
                                        child: Text(
                                          'AD',
                                          style: context.bodyMedium!.copyWith(
                                              color: context.onPrimary),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icons/tStar.svg',
                                                color: Colors.yellow,
                                                width: 18,
                                              ),
                                              3.w,
                                              Text('4.8'),
                                              2.w,
                                              Text(
                                                '(900+)',
                                                style: TextStyle(
                                                    color: context.grey),
                                              ),
                                            ],
                                          ),
                                          SvgPicture.asset(
                                              'assets/icons/Heart.svg')
                                        ],
                                      ),
                                      5.h,
                                      Text(
                                        'Cleaning',
                                        style: context.headlineMedium,
                                      ),
                                      5.h,
                                      Text(
                                        'I will clean your house...',
                                        style: context.bodySmall!
                                            .copyWith(color: context.grey),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'From ',
                                  style: context.bodyMedium!
                                      .copyWith(color: context.grey),
                                ),
                                Text(
                                  '\$25/hr',
                                  style: context.bodyMedium!
                                      .copyWith(color: context.primary),
                                ),
                              ],
                            )
                          ],
                        ).paddingAll(10),
                      ),
                  separatorBuilder: (context, index) => 12.h,
                  itemCount: 3),
              20.h,
              Text(
                'Most rated home cleaners in your region',
                style: context.headlineMedium,
              ),
              10.h,
              SizedBox(
                height: 210,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => SizedBox(
                          width: 140,
                          child: PopularHerosCard(),
                        ),
                    separatorBuilder: (context, index) => 12.h,
                    itemCount: 3),
              ),
              40.h,
            ],
          ).paddingSymmetric(horizontal: 20),
        ),
      ),
    );
  }
}

class PopularHerosCard extends StatelessWidget {
  const PopularHerosCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            width: 90,
            height: 70,
          ),
          5.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/tStar.svg',
                    color: Colors.yellow,
                    width: 18,
                  ),
                  3.w,
                  Text('4.8'),
                  2.w,
                  Text(
                    '(900+)',
                    style: TextStyle(color: context.grey),
                  ),
                ],
              ),
              SvgPicture.asset('assets/icons/Bookmark.svg')
            ],
          ),
          4.h,
          Text(
            'Double Sausage and Egg Muffin',
            style: context.headlineMedium!.copyWith(color: context.onSecondary),
          ),
          5.h,
          Text(
            'Wallstreet Avenue, NY, USA',
            style: context.bodyExtraSmall!.copyWith(color: context.grey),
          )
        ],
      ).paddingAll(10),
    );
  }
}
