import 'package:e_commerce_app/modules/auth/login_screen.dart';
import 'package:e_commerce_app/modules/auth/sign_up_screen.dart';
import 'package:e_commerce_app/utils/mobx/generated/cart/cart_store.dart';
import 'package:e_commerce_app/values/app_globals/app_exports.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (context.read<LoginStore>().isLoggedIn) {
          context.read<CartStore>().initializeItemCount();
          return const RootScreen();
        } else {
          if (context.read<LoginStore>().isSignupScreen) {
            return const SignUpScreen();
          } else {
            return const LoginScreen();
          }
        }
      },
    );
  }
}
