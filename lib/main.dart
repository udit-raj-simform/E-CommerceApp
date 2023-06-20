import 'package:e_commerce_app/values/app_globals/app_exports.dart';

void main() {
  runApp(const MyMobXApp());
}

class MyMobXApp extends StatelessWidget {
  const MyMobXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const RootScreen(),
    );
  }
}
