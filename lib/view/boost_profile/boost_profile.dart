import '../../res/constants/imports.dart';

class BoostProfileView extends StatelessWidget {
  const BoostProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: SimpleAppBar(
        title: 'Boost Profile',
      ),
      body: Column(
        children: [
          20.h,
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: context.primary,
                    borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                )),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => print('Container Tapped'),
                child: Positioned(
                    top: 10,
                    child: Container(
                      padding: EdgeInsets.all(18),
                      width: context.width-40,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(25)
                     ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("Profile Views",style: context.titleSmall!.copyWith(fontSize: 12),),
                            SvgPicture.asset(Assets.icons.more)
                          ],),
                          14.h,
                          Text('25',style: context.titleLarge,),
                          5.h,
                          Text('LAST 14 DAYS',style: context.bodyLarge!.copyWith(color: context.primary),),
                          20.h,
                          AppButton.primary(
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(

                                    content: Column(
                                         mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(

                                            child: SvgPicture.asset(Assets.icons.tCloseSquare),
                                          alignment: Alignment.centerRight,
                                        ),
                                        5.h,
                                        SvgPicture.asset(Assets.icons.logo,width: 200,),
                                        5.h,
                                        Text('Boost My Profile',style: context.titleSmall,),
                                        5.h,
                                        AppButton.primary(child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(Assets.icons.tEnergy),
                                            10.w,
                                            Text('Boost for a week',style: context.bodyLarge!.copyWith(color: context.onPrimary,fontWeight: FontWeight.w500),),
                                          ],),),
                                        10.h,
                                        AppButton.primary(child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(Assets.icons.tEnergy),
                                            10.w,
                                            Text('Boost for a month',style: context.bodyLarge!.copyWith(color: context.onPrimary,fontWeight: FontWeight.w500),),
                                          ],),),
                                        10.h,
                                      ],
                                    ),
                                  )
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              SvgPicture.asset(Assets.icons.tEnergy),
                              10.w,
                              Text('Boost my profile',style: context.titleSmall!.copyWith(color: context.onPrimary,fontWeight: FontWeight.w500),),
                            ],),
                          ),

                        ],
                      ),
                )),
              ),
            ],
          )
        ],
      ).paddingSymmetric(horizontal: 20),
    );
  }
}
