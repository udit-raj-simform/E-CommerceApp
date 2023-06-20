import 'package:e_commerce_app/modules/auth/auth_screen.dart';
import 'package:e_commerce_app/utils/mobx/generated/login_store.dart';
import 'package:e_commerce_app/values/app_globals/app_exports.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyMobXApp());
}

class MyMobXApp extends StatelessWidget {
  const MyMobXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => LoginStore(),
      child: MaterialApp(
        title: AppStrings.appTitle,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: const AuthScreen(),
      ),
    );
  }
}
