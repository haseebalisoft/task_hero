import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../new_module/track_order/widgets/custom_outline_button.dart';

class ChartCard extends StatelessWidget {
  const ChartCard({super.key, required this.title, this.showChart = true});
  final String title;
  final bool showChart;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SvgPicture.asset("assets/icons/ss.svg")
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            '\$1365.36',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: AppColors.p1,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'This graph shows your monthly earnings.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildFilterButton('This month  ', true),
              _buildFilterButton('This Year  ', false),
              _buildFilterButton('Today  ', false),
            ],
          ),
          showChart ? const SizedBox(height: 16) : const SizedBox(),
          showChart
              ? SizedBox(
                  height: 200,
                  child: LineChart(
                    LineChartData(
                      gridData: const FlGridData(show: true),
                      titlesData: const FlTitlesData(),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: const [
                            FlSpot(1, 4),
                            FlSpot(4, 8),
                            FlSpot(8, 6),
                            FlSpot(12, 3),
                            FlSpot(16, 5),
                            FlSpot(20, 7),
                            FlSpot(24, 4),
                            FlSpot(28, 9),
                          ],
                          isCurved: true,
                          color: AppColors.p1,
                          barWidth: 3,
                          isStrokeCapRound: true,
                          belowBarData: BarAreaData(
                            show: true,
                            color: AppColors.p1.withOpacity(0.13),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Widget _buildFilterButton(String label, bool isSelected) {
    return CustomOutlineButton(
      onPressed: () {},
      label: label,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      backgroundColor: isSelected ? AppColors.p1 : Colors.white,
      textColor: !isSelected ? AppColors.p1 : Colors.white,
    );
  }
}
