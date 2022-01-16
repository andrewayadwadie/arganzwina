import 'package:arganzwina/view/auth/login_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String initialRoute = "/welcome-screen";
  static String loginScreen = "/Login-screen";
  static String trackOrdersScreen = "/track-orders-screen";
  static String waitingOrdersScreen = "/waiting-orders-screen";
  static String bottomNavBarScreen = "/BottomNavBar";
  static String searchScreen = "/search-screen";
  static String companiesScreen = "/companies-screen";
  static String discountScreen = "/discount-screen";
  static String productScreen = "/product-screen";
  final String productsScreen = "/products-screen";
  static String walletScreen = "/wallet-screen";
  static String debtsScreen = "/debts-screen";
  static String settingsScreen = "/settings-screen";
  static String complaintScreen = '/complaint';
  static String catsScreen = "/cats-screen";
  static String subCateScreen = "/sub-cate-screen";
  static String subCateCompaniesScreen = "/subCate-companies-screen";
  static String phoneScreen = "/phone-screen";
  static String otpScreen = "/otp-screen";
  static String forgetPasswordScreen = "/forget-password-screen";

  static List<GetPage> routes = [
    GetPage(name: loginScreen, page: () => LoginScreen()),
  ];
}
