import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/home/service_detail_card.dart';
import 'package:cocoon/view/home/service_detail_look2_screen.dart';
import 'package:cocoon/view/home/widgets/review_card.dart';
import 'package:cocoon/view/home/widgets/size_card.dart';

class ServiceDetailScreen extends StatefulWidget {
  const ServiceDetailScreen({super.key});

  @override
  State<ServiceDetailScreen> createState() => _ServiceDetailScreenState();
}

class _ServiceDetailScreenState extends State<ServiceDetailScreen> {
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
            onPressed: () {
              Get.to(() => ServicesDetailLook2Screen());
            },
            icon: SvgPicture.asset("assets/icons/more.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(26),
        child: Column(
          children: [
            const ServiceDetailCard(
              title: "House Cleaning",
              postedDate: "25.09.2023",
              rating: 4.8,
              ratingCount: "900+",
              description:
                  "I need write a professional resume for apply to the company etc",
              imageUrls: ["assets/images/clean.png", "assets/images/clean.png"],
            ),
            20.h,
            const SizeCard(),
            20.h,
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
      ),
    );
  }
}
