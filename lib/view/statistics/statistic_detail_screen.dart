import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/view/statistics/driver_level_screen.dart';
import 'package:cocoon/view/statistics/widgets/chart_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class StatisticDetailScreen extends StatefulWidget {
  const StatisticDetailScreen({super.key});

  @override
  State<StatisticDetailScreen> createState() => _StatisticDetailScreenState();
}

class _StatisticDetailScreenState extends State<StatisticDetailScreen> {
  bool isShowChart = true;
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
          "Details",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isShowChart = !isShowChart;
              });
            },
            icon: SvgPicture.asset("assets/icons/more.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ChartCard(
              title: 'Earnings',
              showChart: isShowChart,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                if (!isShowChart) {
                  Get.to(() => const DriverLevelScreen());
                }
              },
              child: ChartCard(
                title: isShowChart ? 'Services' : "Deliveries",
                showChart: isShowChart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
