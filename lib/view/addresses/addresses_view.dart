import 'package:cocoon/res/constants/imports.dart';

import '../add_new_address/add_new_address.dart';

class AddressesView extends StatelessWidget {
  const AddressesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        title: 'Addresses',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
                  AddressCard(),
            16.h,
            AddressCard(),
            16.h,
            AddressCard(),
            16.h,
            AddressCard(),
            16.h,
            AppButton.primary(
              onPressed: ()=>Get.to(()=>AddNewAddress()),
              background: Color(0xfff5f5f5),
              title: 'Add New Address',
              textColor: context.primary,
            )
          ],
        ).paddingSymmetric(horizontal: 20),
      ),
    );
  }
}


class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Assets.icons.tlocation),
          10.w,
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(fit: BoxFit.scaleDown,child: Text('Home',style: context.bodyLarge!.copyWith(fontWeight: FontWeight.w600),)),
                Text('6238, Central Park, London, UK',maxLines: 1,)
              ],
            ),
          ),
          5.w,
          Radio(value: true, groupValue: 'groupValue', onChanged: (_){},)
        ],
      ).paddingAll(20),
    );
  }
}
