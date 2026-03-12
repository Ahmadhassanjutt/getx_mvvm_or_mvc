
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:getx_and_mvvm_or_mvc/resources/routes/routes_name.dart';

import '../../view/splash_screen.dart';

class AppRoutes {

  static appRoutes() =>[
      GetPage(name: RoutesName.splashScreen, page: () => const SplashScreen(),
      transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade,

      ),
  ];
}