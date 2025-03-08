import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/widgets/burger_detail_screen.dart';
import 'package:cocoon/view/home/widgets/review_card.dart';

class ServicesDetailLook2Screen extends StatefulWidget {
  @override
  State<ServicesDetailLook2Screen> createState() =>
      _ServicesDetailLook2ScreenState();
}

class _ServicesDetailLook2ScreenState extends State<ServicesDetailLook2Screen> {
  bool showReview = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        centerTitle: false,
        title: const Text(
          "Service",
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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSectionTitle('Featured'),
          const SizedBox(height: 8),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return _buildGridItem();
              },
            ),
          ),
          const SizedBox(height: 20),
          _buildSectionTitle('Muffin'),
          const SizedBox(height: 20),
          _buildListItem(),
          _buildListItem(),
          const SizedBox(height: 20),
          _buildSectionTitle('Cheese Burger'),
          const SizedBox(height: 20),
          _buildListItem(),
          GestureDetector(
            onTap: () {
              setState(() {
                showReview = !showReview;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 65,
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
                  const Text(
                    "Reviews",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.black1,
                    ),
                  ),
                  const Spacer(),
                  6.w,
                  Icon(showReview
                      ? Icons.keyboard_arrow_down_outlined
                      : Icons.keyboard_arrow_up_outlined)
                ],
              ),
            ),
          ),
          20.h,
          showReview ? const ReviewCard() : const SizedBox(),
          20.h,
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.black1,
      ),
    );
  }

  Widget _buildGridItem() {
    return GestureDetector(
      onTap: () {
        Get.to(() => BurgerDetailScreen());
      },
      child: SizedBox(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/images/muffin.png',
                height: 63,
                width: 84,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Double Sausage and Egg Muffin',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black1),
            ),
            const SizedBox(height: 4),
            const Row(
              children: [
                Text(
                  '\$3.5 ',
                  style: TextStyle(fontSize: 12, color: AppColors.p1),
                ),
                Text(
                  ' 551 Kcal',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem() {
    return GestureDetector(
      onTap: () {
        Get.to(() => BurgerDetailScreen());
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/images/muffin.png',
                height: 63,
                width: 84,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Double Sausage and Egg Muffin',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        '\$3.5 ',
                        style: TextStyle(fontSize: 12, color: AppColors.p1),
                      ),
                      Text(
                        ' 551 Kcal',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Double Sausage and Egg Muffin with special cheese and chicken steaks and',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
