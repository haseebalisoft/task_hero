import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/track_order/widgets/custom_divider.dart';

class DriverLevelScreen extends StatelessWidget {
  const DriverLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        centerTitle: false,
        title: const Text(
          "Driver Level",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            padding: const EdgeInsets.all(16),
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
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Total Jobs",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black1,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "279",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: AppColors.p1,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "You need to complete 221 deliveries/jobs to achieve Platinum Level.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 20),
                const CustomDivider(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset("assets/icons/star2.svg"),
                        10.h,
                        const Text("251"),
                      ],
                    ),
                    Expanded(
                      child: Slider(
                        value: 279,
                        min: 251,
                        max: 500,
                        onChanged: (value) {},
                        activeColor: Colors.blue,
                        inactiveColor: Colors.grey[300],
                      ),
                    ),
                    Column(
                      children: [
                        SvgPicture.asset("assets/icons/start3.svg"),
                        10.h,
                        const Text("500"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis leo at metus lobortis tincidunt. Ut ullamcorper nisl et nibh consectetur, ac commodo massa ultricies. Maecenas hendrerit dolor et egestas pulvinar.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
