import 'package:e_commerce_app/utils/mobx/generated/cart/cart_store.dart';
import 'package:e_commerce_app/values/app_globals/app_exports.dart';

void main() {
  runApp(const MyMobXApp());
}

class MyMobXApp extends StatelessWidget {
  const MyMobXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => LoginStore(),
        ),
        Provider(
          create: (_) => CartStore(),
        ),
      ],
      child: MaterialApp(
        title: AppStrings.appTitle,
        theme: ThemeData.light(),
        darkTheme: AppThemes().dark,
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: const AuthScreen(),
      ),
    );
  }
}
