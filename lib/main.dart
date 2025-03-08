import 'package:cocoon/res/constants/imports.dart';
import 'package:cocoon/res/theme/theme_light.dart';
import 'package:cocoon/view/add_a_service/add_a_service.dart';
import 'package:cocoon/view/add_a_service/add_a_service_controller.dart';
import 'package:cocoon/view/add_cash/add_cash.dart';
import 'package:cocoon/view/add_profile_details/add_profile_details_view.dart';
import 'package:cocoon/view/auth/login/login.dart';
import 'package:cocoon/view/auth/signup/signup_page.dart';
import 'package:cocoon/view/forgot_and_reset_password/reset_password_screen.dart';
import 'package:cocoon/view/get_started/get_started_view.dart';
import 'package:cocoon/view/home/home_view.dart';
import 'package:cocoon/view/inbox/inbox.dart';
import 'package:cocoon/view/main_activity.dart';
import 'package:cocoon/view/onboard_question/getInfo.dart';
import 'package:cocoon/view/payment_and_wallet/payment_and_wallet.dart';
import 'package:cocoon/view/set_location/set_locatoin.dart';
import 'package:cocoon/view/setting_view/setting_view.dart';
import 'package:cocoon/view/splash/splash.dart';
import 'package:cocoon/view/user_verification/create_new_pin_screen.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeLight().theme,

      // home: AddAService(),
      home: SplashPage(),
    );
  }
}
