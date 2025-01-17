import '../res/constants/imports.dart';

class MessageBubble extends StatelessWidget {
  bool fromUser;
   MessageBubble({
    required this.fromUser,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:fromUser? CrossAxisAlignment.start:CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin:
          fromUser?EdgeInsets.only(right:context.width * 0.3,):EdgeInsets.only(left: context.width * 0.3),
          decoration: BoxDecoration(

              borderRadius: BorderRadius.only(
                topLeft:fromUser? Radius.circular(0):Radius.circular(10),
                topRight: fromUser? Radius.circular(10):Radius.circular(0),
                bottomRight:Radius.circular(10),
                bottomLeft:Radius.circular(10),
              ),
              color: fromUser?context.secondary:context.primary),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis rutrum odio mauris, sit amet.',style: context.bodySmall!.copyWith(color: fromUser?Colors.black:context.onPrimary),),
              SizedBox(height:14),
              Text('2:17 PM',style: context.bodySmall!.copyWith(color: fromUser?Colors.black:context.onPrimary,fontSize: 10),)
            ],
          ),
        ),

      ],
    );
  }
}