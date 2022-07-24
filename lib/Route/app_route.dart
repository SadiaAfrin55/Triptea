
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triptea/Presentation/Pages/Payment/invoice_page.dart';
import '../Bloc/Login/login_cubit.dart';
import '../Bloc/User/user_cubit.dart';
import '../Constants/Strings/app_strings.dart';
import '../Presentation/Pages/ForgetPassword/Email/email_resend.dart';
import '../Presentation/Pages/ForgetPassword/Phone/confirm_password.dart';
import '../Presentation/Pages/ForgetPassword/forget_password.dart';
import '../Presentation/Pages/ForgetPassword/Phone/new_password.dart';
import '../Presentation/Pages/ForgetPassword/Phone/otp_page.dart';
import '../Presentation/Pages/ForgetPassword/Phone/resend_phone.dart';
import '../Presentation/Pages/ForgetPassword/Email/reset_password.dart';
import '../Presentation/Pages/Home/home_page.dart';
import '../Presentation/Pages/Login/login_page.dart';
import '../Presentation/Pages/Login/login_success_page.dart';
import '../Presentation/Pages/Cart/cart_page.dart';
import '../Presentation/Pages/Menu/menu_details.dart';
import '../Presentation/Pages/Menu/Menu List/menu_page.dart';
import '../Presentation/Pages/Payment/payment_process.dart';
import '../Presentation/Pages/Shop/Shop Details/shop_details.dart';
import '../Presentation/Pages/Order/order_page.dart';
import '../Presentation/Pages/Payment/creditcard_page.dart';
import '../Presentation/Pages/Payment/TripteaWallet/my_wallet.dart';
import '../Presentation/Pages/Payment/payment_history.dart';
import '../Presentation/Pages/Payment/payment_page.dart';
import '../Presentation/Pages/Payment/payment_successful.dart';
import '../Presentation/Pages/Payment/TripteaWallet/wallet_addbalance.dart';
import '../Presentation/Pages/Profile/edit_profile.dart';
import '../Presentation/Pages/Profile/profile_page.dart';
import '../Presentation/Pages/Settings/language_settings.dart';
import '../Presentation/Pages/Settings/password_settings.dart';
import '../Presentation/Pages/Settings/setting_page.dart';
import '../Presentation/Pages/SignUP/signup_page.dart';
import '../Presentation/Pages/SignUP/signup_success_page.dart';
import '../Presentation/Pages/main_screen.dart';
import '../Presentation/Screens/SplashScreen/splash_screen.dart';
import '../Presentation/Screens/started_page.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final Map? args = settings.arguments as Map?;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case GET_STARTED:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: GetStartedPage(),
            ));
      case HOME_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: MainScreen(),
            ));
      case LOGIN_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: LoginPage(),
            ));
      case LOGIN_SUCCESS:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: LoginSuccessPage(),
            ));
      case SIGNUP_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: SignupPage(),
            ));
      case SIGNUP_SUCCESS:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: SignupSuccessPage(),
            ));
      case FORGET_PASSWORD_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: ForgetPasswordPage(),
            ));
        case RESET_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: ResetPasswordPage(),
            ));
        case RESEND_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: EmailResendPage(),
            ));
        case SEND_CODE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: ResetPhonePage(),
            ));
        case OTP_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: OtpPage(),
            ));
        case NEW_PASSWORD_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: NewPassword(),
            ));
        case SET_PASSWORD_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: ForgetPasswordPage(),
            ));
      case NEW_PASSWORD_CONFIRM:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: ConfirmPassword(),
            ));
      case PROFILE_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: ProfilePage(),
            ));
        //ProfilePage
      case EDIT_PROFILE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: EditProfilePage(),
            ));
      case MENU_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: MenuPage(),
            ));
      case SHOP_DETAILS:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: ShopDetails(),
            ));
      case MENU_DETAILS:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: MenuDetails(),
            ));
      case CART_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: CartPage(),
            ));
      case PAYMENT_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: PaymentPage(),
            ));
      case PAYMENT_PROCESS:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: PaymentProcess(),
            ));
      case PAYMENT_SUCCESS:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: PaymentSuccess(),
            ));
      case CREDIT_CARD_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: CreditCardPage(),
            ));
      case INVOICE_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: InvoicePage(),
            ));
      case MY_WALLET_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: MyWallet(),
            ));
      case ADD_BALANCE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: AddBalance(),
            ));
      case SETTINGS_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: SettingsPage(),
            ));
      case PAYMENT_HISTORY:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: PaymentHistory(),
            ));
      case PASSWORD_SETTINGS:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: PasswordSettings(),
            ));
      case LANGUAGE_SETTINGS:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: LanguageSettings(),
            ));
      case ORDER_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: OrderPage(),
            ));
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: Container(),
            ));
    }
  }
}