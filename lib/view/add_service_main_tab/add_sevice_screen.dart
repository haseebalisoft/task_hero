import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/view/add_service_main_tab/service_request_details_screen.dart';
import 'package:cocoon/view/home/widgets/complete_profile_card.dart';
import 'package:cocoon/view/user_verification/widgets/custom_tag.dart';
import 'package:flutter/material.dart';

class AddSeviceScreen extends StatefulWidget {
  const AddSeviceScreen({super.key});

  @override
  State<AddSeviceScreen> createState() => _AddSeviceScreenState();
}

class _AddSeviceScreenState extends State<AddSeviceScreen> {
  @override
  bool change = false;
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
          "Add a Service",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                change = !change;
              });
            },
            icon: SvgPicture.asset("assets/icons/more.svg"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: change
            ? Column(
                children: [
                  const CustomTag(
                    text: "Your request to start giving services is received.",
                    color: Colors.green,
                    icon: Icons.info_outline,
                  ),
                  20.h,
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ServiceRequestDetails());
                    },
                    child: const CompleteProfileCard(
                      text: "View Details",
                    ),
                  ),
                  40.h,
                  SvgPicture.asset("assets/icons/v.svg")
                ],
              )
            : Column(
                children: [
                  const CustomTag(
                    text:
                        "You haven’t completed profile setup to start giving services.",
                    color: Color(0xFFFF0000),
                    icon: Icons.info_outline,
                  ),
                  20.h,
                  CompleteProfileCard(),
                ],
              ),
      ),
    );
  }
}
