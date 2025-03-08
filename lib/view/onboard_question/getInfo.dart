import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/onboard_question/original_documents.dart';
import 'package:cocoon/view/onboard_question/skill_and_education.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../res/components/sb.dart';
import '../../widgets/custom_drop_down.dart';
import 'get_info_controller.dart';
import 'get_info_option_widget.dart';

class GetInfoPage extends StatelessWidget {
  final bool forEdit;
  const GetInfoPage({this.forEdit=false, super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetInfoController>(
      init: GetInfoController(forEdit: forEdit),
      builder: (controller) {
        return Scaffold(
          appBar:SimpleAppBar(title: 'Profile Setup',) ,
          body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(

                children: [
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
                  30.h,
                  Expanded(
                      child: PageView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: controller.pageViewController,
                        //onPageChanged: _handlePageViewChanged,
                        children: [
                          GetInfoOptionWidget(
                              controller: controller),
                          SkillAndEducationView(),
                          OriginalDocumentsView()

                        ],
                      )),
                ],
              )
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
                    title: 'Skip',
                    textColor: context.primary,
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(child: AppButton.primary(title: 'Next',onPressed: controller.incrementPageViewIndex,))
              ],
            ),
          ),
        );
      },
    );
  }
}
