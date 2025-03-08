import 'package:cocoon/res/constants/imports.dart';

class LinkedAccountView extends StatelessWidget {
  const LinkedAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        title: 'Linked accounts',
      ),
      body: Column(
        children: [
          LinkedAccountCard(path: Assets.icons.tgoogle2,title: 'Google',),
          15.h,
          LinkedAccountCard(path: Assets.icons.tapple,title: 'Apple',),
          15.h,
          LinkedAccountCard(path: Assets.icons.facebook,title: 'Facebook',),
          40.h,
          AppButton.primary(title: "Apply",width: 200,)
        ],
      ).paddingSymmetric(horizontal: 20),
    );
  }
}



class LinkedAccountCard extends StatelessWidget {
  final String path;
  final String title;
  const LinkedAccountCard({
   required this.path,
   required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(path),
          10.w,
          Text(title,style: context.bodyLarge!.copyWith(fontWeight: FontWeight.w600),),
          5.w,
          Checkbox(value: true,  onChanged: (_){},)
        ],
      ).paddingAll(20),
    );
  }
}
