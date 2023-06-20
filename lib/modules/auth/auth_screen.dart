import 'package:e_commerce_app/modules/auth/login_screen.dart';
import 'package:e_commerce_app/utils/mobx/generated/login_store.dart';
import 'package:e_commerce_app/values/app_globals/app_exports.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        if (context.read<LoginStore>().isLoggedIn) {
          return const RootScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
