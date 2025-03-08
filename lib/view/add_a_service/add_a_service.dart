import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/add_a_service/add_a_service_controller.dart';
import 'package:cocoon/view/payment_and_wallet/payment_and_wallet.dart';
import 'package:cocoon/view/user_verification/widgets/custom_tag.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../new_module/track_order/widgets/select_packaging_bottom_sheet.dart';


class AddAService extends StatefulWidget {
  const AddAService({super.key});

  @override
  State<AddAService> createState() => _AddAServiceState();
}

class _AddAServiceState extends State<AddAService> {
  bool showAddNote = false;
  bool showTrackCard = false;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddAServiceController>(
      init: AddAServiceController(),
      builder: (controller) => Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        centerTitle: false,
        title: const Text(
          "Add a Service",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/more.svg"),
          ),
        ],
      ),
      body: Column(
        children: [
          20.h,

          Center(
            child: LinearPercentIndicator(
              barRadius: Radius.circular(10),
              width: context.width-40,
              lineHeight: 16.0,
              percent: controller.getInfoProgress,
              backgroundColor: context.secondary,
              progressColor: context.primary,
            ),
          ),
          Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: controller.pageViewController,
                //onPageChanged: _handlePageViewChanged,
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          14.h,
                          CustomTextField(
                            title: 'Title',
                            hintText: 'Cheesing chicken, Nuggets, etc',
                          ),
                          CustomTextField(
                            title: 'Describe',
                            hintText: 'Enter details',
                          ),
                          const SizedBox(height: 16),
                          Text('Attach Images',style: context.titleSmall!.copyWith(fontSize: 14),),
                          10.h,
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.p1, width: 2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset("assets/icons/ca.svg"),
                                  const SizedBox(height: 8),
                                   Text(
                                    "Add photo",
                                    style: TextStyle(
                                        color: context.primary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          10.h,
                          const Text(
                            "Please attach images in the format of .jpg, .jpeg, .png, etc.",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          const SizedBox(height: 24),
                          InkWell(
                            onTap: (){
                              Get.bottomSheet(

                                backgroundColor: Colors.white,
                                  SingleChildScrollView(child: SelectPackagingBottomSheet()),
                              );
                            },
                            child: Card(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Size, Dimension & Weight',style: context.titleSmall!.copyWith(fontSize: 14),),
                                  SvgPicture.asset(Assets.icons.arrowRight),

                                ],).paddingAll(16),
                            ),
                          ),
                          16.h,
                          Text('Order Type',style: context.headlineMedium,),
                          6.h,
                          Text('Must allow at least 1 order type.',style: context.bodySmall,),
                          Row(children: [
                            Checkbox(value: false, onChanged: (v){}),
                            5.w,
                            Text('Delivery',style: context.headlineMedium,),

                          ],),
                          0.h,
                          Row(children: [
                            Checkbox(value: false, onChanged: (v){}),
                            5.w,
                            Text('Pickup',style: context.headlineMedium,),

                          ],),
                          Text(
                            "Additional",
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.black1,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 8),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showAddNote = !showAddNote;
                              });
                            },
                            child: Container(
                              padding:
                              const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
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
                                  SvgPicture.asset("assets/icons/add2.svg"),
                                  const SizedBox(width: 14),
                                   Text(
                                    "Add a note",
                                    style: TextStyle(
                                      color: context.primary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          showAddNote
                              ? const Padding(
                            padding: EdgeInsets.only(top: 12),
                            child: CustomTextField(
                              hintText: "Placeholder",
                              maxLines: 4,
                              borderRadius: 16,
                            ),
                          )
                              : const SizedBox(),
                          const SizedBox(height: 24),


                        ],
                      ),
                    ),
                  ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   CustomTextField(
                     title: 'Set price',
                     hintText: '\$ 479',
                   ),
                   10.h,
                   Text('Payment method for receiving money',style: context.headlineMedium,),
                   PaymentCardService()
                 ],).paddingAll(20),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.h,
                        Text('Food Type',style: context.headlineMedium,),
                        Row(children: [
                          Radio(value: false, groupValue: 'groupValue', onChanged: (v){}),
                          7.w,
                          Text('Halal',style: context.headlineMedium,)
                        ],),
                        Row(children: [
                          Radio(value: false, groupValue: 'groupValue', onChanged: (v){}),
                          7.w,
                          Text('Vegan',style: context.headlineMedium,)
                        ],),
                        Row(children: [
                          Radio(value: false, groupValue: 'groupValue', onChanged: (v){}),
                          7.w,
                          Text('Vegetarian',style: context.headlineMedium,)
                        ],),
                        Row(children: [
                          Radio(value: false, groupValue: 'groupValue', onChanged: (v){}),
                          7.w,
                          Text('Kosher',style: context.headlineMedium,)
                        ],),
                        Row(children: [
                          Radio(value: false, groupValue: 'groupValue', onChanged: (v){}),
                          7.w,
                          Text('Not Halal',style: context.headlineMedium,)
                        ],),
                        20.h,
                        Container(
                          decoration: BoxDecoration(
                            color: context.primary,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Row(children: [
                            SvgPicture.asset(Assets.icons.logoSmall,color: Colors.white,),
                            8.w,
                            Expanded(child: Text('Don’t worry your receipts are safe with us.',style: context.bodySmall!.copyWith(color: Colors.white,),),),
                            SvgPicture.asset(Assets.icons.info,color: context.onPrimary,)
                          ],).paddingAll(10),
                        ),
                        20.h,
                        Container(
                          padding: EdgeInsets.all(16),
                          color: context.cardColor,
                          child:Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Upload Receipt',style: context.titleSmall,),
                                  SvgPicture.asset(Assets.icons.info,color: Colors.black,)
                                ],
                              ),
                              10.h,
                              Text('Proof to check if your are eligible to start giving services.',style: context.bodySmall!.copyWith(),),
                              15.h,
                              AppButton.primary(child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(Assets.icons.paperUpload),
                                  10.w,
                                  Text('.pdf, .doc, .docx formats only',style: context.bodyMedium!.copyWith(color: context.onPrimary),)
                                ],
                              ),)
                            ],
                          ),
                        ),
                        40.h,
                      ],
                    ).paddingSymmetric(horizontal: 20),
                  )


                ],
              )),



        ],
      ),
        bottomNavigationBar:  Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: AppButton.primary(
                  background: context.cardColor,
                  // background: controller.isCurrentPageValid()?context.primary:context.grey,
                  onPressed: controller.incrementPageViewIndex,
                  elevation: 3,
                  title: 'Back',
                  textColor: context.primary,
                ),
              ),
              SizedBox(width: 15,),
              Expanded(child: AppButton.primary(title: 'Next',onPressed: controller.incrementPageViewIndex,))
            ],
          ),
        ),
    ),
    );
  }
}







class PaymentCardService extends StatelessWidget {
  const PaymentCardService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Assets.icons.logosMastercard),
          10.w,
          Expanded(
            flex: 3,
            child: FittedBox(fit: BoxFit.scaleDown,child: Text('•••• •••• •••• •••• 4679',style: context.bodyLarge!.copyWith(fontWeight: FontWeight.w600),)),
          ),
          5.w,

          SvgPicture.asset(Assets.icons.edit)
        ],
      ).paddingAll(20),
    );
  }
}
