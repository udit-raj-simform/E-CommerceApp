import 'package:e_commerce_app/values/app_globals/app_exports.dart';

class AppGlobalFunctions {
  AppGlobalFunctions._();

  static final AppGlobalFunctions _appGlobalFunctions = AppGlobalFunctions._();

  factory AppGlobalFunctions() => _appGlobalFunctions;

  showSnackBar(BuildContext context, String content) {
    ScaffoldMessenger.maybeOf(context)?.clearSnackBars();
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(
      SnackBar(
        content: Text(content),
      ),
    );
  }
}
