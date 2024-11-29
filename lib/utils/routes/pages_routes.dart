import 'package:get/get.dart';
import 'package:service/presentation/book_service/get/book_service_bindings.dart';
import 'package:service/presentation/book_service/page/book_service_screen.dart';
import 'package:service/presentation/bottom_navigation/bottom_navigation.dart';
import 'package:service/presentation/bottom_navigation/get/bottom_nav_bindings.dart';
import 'package:service/presentation/cart/get/cart_bindings.dart';
import 'package:service/presentation/cart/page/cart_screen.dart';
import 'package:service/presentation/home/get/home_bindings.dart';
import 'package:service/presentation/home/pages/home_screen.dart';
import 'package:service/presentation/intro_screen_one/get/intro_screen_one_bindings.dart';
import 'package:service/presentation/intro_screen_one/page/intro_screen_one.dart';
import 'package:service/presentation/login/get/login_bindings.dart';
import 'package:service/presentation/login/page/login_screen.dart';
import 'package:service/presentation/my_booking/get/my_booking_binding.dart';
import 'package:service/presentation/my_booking/page/my_booking_screen.dart';
import 'package:service/presentation/my_profile/get/my_profile_bindings.dart';
import 'package:service/presentation/my_profile/page/my_profile_screen.dart';
import 'package:service/presentation/otp/get/otp_bindings.dart';
import 'package:service/presentation/otp/page/otp_screen.dart';
import 'package:service/presentation/register/get/register_bindings.dart';
import 'package:service/presentation/register/page/register_screen.dart';
import 'package:service/presentation/selected_service/get/selected_service_bindings.dart';
import 'package:service/presentation/selected_service/page/selected_service_screen.dart';
import 'package:service/presentation/selected_service_details/get/selected_service_details_binding.dart';
import 'package:service/presentation/selected_service_details/page/selected_service_details_screen.dart';
import 'package:service/presentation/service/get/service_bindings.dart';
import 'package:service/presentation/service/pages/service_screen.dart';
import 'package:service/presentation/service_details/page/service_details_screen.dart';
import 'package:service/presentation/splash_screen/splash_screen.dart';
import 'package:service/utils/routes/routes.dart';

class PagesRoutes {
  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
        name: Routes.homeScreen,
        page: () =>  HomeScreen(),
        binding: HomeBindings()),
    GetPage(
        name: Routes.bottomNavigation,
        page: () => const BottomNavigation(),
        binding: BottomNavBindings()),

    GetPage(
        name: Routes.serviceScreen,
        page: () =>  ServiceScreen(),
        binding: ServiceBindings()),

    GetPage(name: Routes.serviceDetailsScreen,
        page: ()=>const ServiceDetailsScreen(),
    binding: ServiceBindings()
    ),

    GetPage(name: Routes.selectedServiceScreen,
        page: ()=>const SelectedServiceScreen(),
        binding: SelectedServiceBindings()
    ),
    GetPage(name: Routes.selectedServiceDetailsScreen,
        page: ()=>const SelectedServiceDetailsScreen(),
        binding: SelectedServiceDetailsBindings()
    ),
    GetPage(name: Routes.bookServiceScreen,
        page: ()=>const BookServiceScreen(),
        binding: BookServiceBindings()
    ),
    GetPage(name: Routes.cartScreen,
        page: ()=>const CartScreen(),
        binding: CartBindings()
    ),

    GetPage(name: Routes.introScreenOne,
        page: ()=>const IntroScreenOne(),
        binding: IntroScreenOneBindings()
    ),

    GetPage(name: Routes.loginScreen,
        page: ()=>const LoginScreen(),
        binding: LoginBindings()
    ),

    GetPage(name: Routes.registerScreen,
        page: ()=>const RegisterScreen(),
        binding: RegisterBindings()
    ),


    GetPage(name: Routes.otpScreen,
        page: ()=>const OtpScreen(),
        binding: OtpBindings()
    ),

    GetPage(name: Routes.myBookingScreen,
        page: ()=> MyBookingScreen(),
        binding: MyBookingBindings()
    ),

    GetPage(name: Routes.myProfileScreen,
        page: ()=> const MyProfileScreen(),
        binding: MyProfileBindings()
    ),



  ];
}
