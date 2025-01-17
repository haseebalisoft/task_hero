import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/onboard_question/getInfo.dart';
import 'package:cocoon/view/user_verification/create_new_pin_screen.dart';
import 'package:cocoon/view_models/models/welcome_view_model/signup_view_model.dart';
import 'package:country_code_picker/country_code_picker.dart';

import '../set_location/set_locatoin.dart';

class AddProfileDetailsView extends StatelessWidget {
  const AddProfileDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpViewModel>(
      init: SignUpViewModel(),
        builder: (controller) => Scaffold(
      backgroundColor: Color(0xffFEFEFE),
      appBar: SimpleAppBar(
        title: 'Profile',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.h,
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: controller.imgFile!=null? Image.file(controller.imgFile!,height: 150,width: 150,fit: BoxFit.cover,): Assets.images.person.image(height: 150,width: 150,fit: BoxFit.cover),
                    ) ,
                  ),


                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: controller.setImageFile,
                          child: SvgPicture.asset(Assets.icons.editSquare)))
                ],
              ),
            ),
            30.h,
            CustomTextField(title: 'Hero/Company Name',hintText: 'Type here',),
            CustomTextField(title: 'About Hero',hintText: 'About you and services you provide',maxLines: 5,),
            20.h,
            Text('Language',style: context.headlineMedium,),
            20.h,
            AppButton.primary(
              width: 110,
              child: Row(children: [
                Text('Add'),
                10.w,
                SvgPicture.asset(Assets.icons.plus),



              ],),),
            20.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Service Type',style: context.headlineMedium,),
                SvgPicture.asset(Assets.icons.dangerCircle)
              ],),
            30.h,
            Text('Contact',style: context.headlineMedium,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 130,
                  height: 52,
                  decoration: BoxDecoration(
                      color: context.cardColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: context.extraLightGrey)),
                  child: CountryCodePicker(
                    onChanged: (v){
                      print(v);
                    },
                    showDropDownButton: true,
                    initialSelection: 'IT',
                    favorite: ['+39', 'FR'],
                  ),
                ),
                SB.w(5),
                Expanded(
                  child: CustomTextField(
                    hintText: 'phone number',
                    showBottomHeight: false,
                    // validator: validatePhoneNumber,
                    // controller: controller.tfPhoneNumber,
                  ),
                ),


              ],
            ),
            20.h,
            InkWell(
              onTap: ()=>Get.to(()=>SetLocationView()),
                child: CustomTextField(title: 'Location',hintText: 'Location',suffixIcon: Assets.icons.location,enabled: false,)),
            20.h,
            Card(
              color: Color(0xffFFFFFF),
              child: Row(
                children: [
                  SvgPicture.asset( Assets.icons.ziczac),
                  12.w,
                  Expanded(child: Text('Choose Payment Method',style: context.headlineMedium,)),
                  SvgPicture.asset(Assets.icons.arrowRight)
                ],
              ).paddingSymmetric(horizontal: 8,vertical: 20),
            ),
            40.h,
            Center(child: AppButton.primary(title: 'Save & continue',onPressed: ()=>Get.to(()=>GetInfoPage()),)),
            50.h,



          ],
        ).paddingSymmetric(horizontal: 20),
      ),
    ));
  }
}