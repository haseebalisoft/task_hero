import 'package:cocoon/view/set_location/set_locatoin.dart';
import 'package:cocoon/widgets/custom_drop_down.dart';

import '../../res/constants/imports.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        title: 'Add new Address',
      ),
      body: Column(
        children: [
          CustomDropDown(
            items: [],
            hint: 'HOme, office , etc',
            title: 'Type',
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  title: 'Country',
                  hintText: 'England',
                ),
              ),
              10.w,
              Expanded(
                child: CustomTextField(
                  title: 'City',
                  hintText: 'London',
                ),
              ),
            ],
          ),
          CustomTextField(
            title: 'Address',
            hintText: '+234324',
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  title: 'Phone Number',
                  hintText: '242434234',
                ),
              ),
              10.w,
              Expanded(
                child: CustomTextField(
                  title: 'Zip/Postal Code',
                  hintText: '2434',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Save as a primary address'),
            Switch(value: false, onChanged: (v){})
          ],),
          40.h,
          AppButton.primary(
            onPressed: ()=>Get.to(()=>SetLocationView(fromSetting: true,)),
            title: 'Apply',
            background: Color(0xfff5f5f5),
            textColor: context.primary,
          )
        ],
      ).paddingSymmetric(horizontal: 20),
    );
  }
}
