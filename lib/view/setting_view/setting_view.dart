import 'package:cocoon/view/add_profile_details/add_profile_details_view.dart';
import 'package:cocoon/view/addresses/addresses_view.dart';
import 'package:cocoon/view/currency/currency_controller.dart';
import 'package:cocoon/view/currency/currency_view.dart';
import 'package:cocoon/view/help_center/help_center.dart';
import 'package:cocoon/view/languages/languages_view.dart';
import 'package:cocoon/view/linked_account/linked_account.dart';
import 'package:cocoon/view/my_services_history/my_services_history.dart';
import 'package:cocoon/view/payment_and_wallet/payment_and_wallet.dart';
import 'package:cocoon/view/report/report_view.dart';

import '../../res/constants/imports.dart';
import '../boost_profile/boost_profile.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
      appBar: AppBar(title: Text('Profile',style: context.titleSmall!.copyWith(color: context.primary),),),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child:Row(
                children: [
                  // Assets.icons.point.svg(),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Assets.images.personc.image(height: 60,width: 60)),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text('Hello!',style: context.headlineMedium,),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                  width: context.width*0.6,
                                  child: Text('George James',style: context.bodyMedium,)),
                            ),
        
                          ],
                        )
                      ],
                    ),
                  ),
                  SvgPicture.asset(Assets.icons.logout),
                ],
              ).paddingAll(10),
            ),
            20.h,
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Status',style: context.headlineMedium,),
                        Text('Active',style: context.bodyMedium!.copyWith(color: Colors.green),),
                        5.h,
                        Text('You are actively taking orders & providing services.',style: context.bodyMedium),
                      ],
                    ),
                  ),
                  Switch(value: true, onChanged: (v){})
                ],
              ).paddingAll(10),
            ),
            20.h,
            Card(
              child:Column(
                children: [
                  InkWell(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Row(
                        children: [
                          SvgPicture.asset(Assets.icons.profile),
                          10.w,
                          Text('Profile',style: context.titleSmall!.copyWith(fontSize: 16),),
                        ],
                      ),
                      SvgPicture.asset(Assets.icons.arrowRight)
                    ],),
                    onTap: ()=>Get.to(()=>AddProfileDetailsView()),
                  ),
                  16.h,
                  InkWell(
                    onTap: ()=>Get.to(()=>PaymentAndWallet()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.icons.wallet),
                            10.w,
                            Text('Payment & Wallet',style: context.titleSmall!.copyWith(fontSize: 16),),
                          ],
                        ),
                        SvgPicture.asset(Assets.icons.arrowRight)
                      ],),
                  ),
                  16.h,
                  InkWell(
                     onTap:()=> Get.to(()=>MyServicesHistory()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.icons.buy),
                            10.w,
                            Text('My Services History',style: context.titleSmall!.copyWith(fontSize: 16),),
                          ],
                        ),
                        SvgPicture.asset(Assets.icons.arrowRight)
                      ],),
                  ),
                  16.h,
                  InkWell(
                    onTap: ()=>Get.to(()=>BoostProfileView()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.icons.boost),
                            10.w,
                            Text('Boost Profile',style: context.titleSmall!.copyWith(fontSize: 16),),
                          ],
                        ),
                        SvgPicture.asset(Assets.icons.arrowRight)
                      ],),
                  ),
                  16.h,
                  InkWell(
                    onTap: (){

                      Get.to(()=>AddressesView());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.icons.location,color: Colors.black,),
                            10.w,
                            Text('Addresses',style: context.titleSmall!.copyWith(fontSize: 16),),
                          ],
                        ),
                        SvgPicture.asset(Assets.icons.arrowRight)
                      ],),
                  ),
                  16.h,
                  InkWell(
                    onTap: ()=>Get.to(()=>LinkedAccountView()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.icons.swap),
                            10.w,
                            Text('Linked Accounts',style: context.titleSmall!.copyWith(fontSize: 16),),
                          ],
                        ),
                        SvgPicture.asset(Assets.icons.arrowRight)
                      ],),
                  ),
                  16.h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(Assets.icons.shieldDone),
                          10.w,
                          Text('Privacy & Security',style: context.titleSmall!.copyWith(fontSize: 16),),
                        ],
                      ),
                      SvgPicture.asset(Assets.icons.arrowRight)
                    ],),
                  16.h,
                  InkWell(
                    onTap: ()=>Get.to(()=>LanguagesView()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.icons.language),
                            10.w,
                            Text('Languages',style: context.titleSmall!.copyWith(fontSize: 16),),
                            10.w,
                            Text('English (US)',style: context.titleSmall!.copyWith(fontSize: 16),),
                          ],
                        ),
                        SvgPicture.asset(Assets.icons.arrowRight)
                      ],),
                  ),
                  16.h,
                  InkWell(
                    onTap: ()=>Get.to(()=>CurrencyView()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.icons.currencyUp),
                            10.w,
                            Text('Currency',style: context.titleSmall!.copyWith(fontSize: 16),),
                            30.w,
                            Text('Dollars(\$)',style: context.titleSmall!.copyWith(fontSize: 16),),
                          ],
                        ),
                        SvgPicture.asset(Assets.icons.arrowRight)
                      ],),
                  ),
                  16.h,
                  InkWell(
                    onTap: ()=>Get.to(()=>HelpCenter()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.icons.infoSquare),
                            10.w,
                            Text('Help Center',style: context.titleSmall!.copyWith(fontSize: 16),),
                          ],
                        ),
                        SvgPicture.asset(Assets.icons.arrowRight)
                      ],),
                  ),
                  16.h,
                  InkWell(
                    onTap: ()=>Get.to(()=>ReportView()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.icons.dangerTriangle),
                            10.w,
                            Text('Report',style: context.titleSmall!.copyWith(fontSize: 16),),
                          ],
                        ),
                        SvgPicture.asset(Assets.icons.arrowRight)
                      ],),
                  ),
                  16.h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(Assets.icons.dangerCircle),
                          10.w,
                          Text('Terms & Conditions',style: context.titleSmall!.copyWith(fontSize: 16),),
                        ],
                      ),
                      SvgPicture.asset(Assets.icons.arrowRight)
                    ],),
                  16.h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(Assets.icons.star),
                          10.w,
                          Text('Rate us',style: context.titleSmall!.copyWith(fontSize: 16),),
                        ],
                      ),
                      SvgPicture.asset(Assets.icons.arrowRight)
                    ],),
                  16.h,
                ],
              ).paddingAll(10),
            )
          ],
        ).paddingSymmetric(horizontal: 16),
      ),

    );
  }
}
