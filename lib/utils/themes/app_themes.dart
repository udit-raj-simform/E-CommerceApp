import 'package:e_commerce_app/values/app_globals/app_exports.dart';

class AppThemes {
  AppThemes._();

  static final AppThemes _appThemes = AppThemes._();

  factory AppThemes() => _appThemes;

  ThemeData get dark => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black38,
        snackBarTheme: SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.white.withOpacity(0.3),
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.white38,
              width: 1.4,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(18.0),
            ),
          ),
          contentTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontFamily: "Times New Roman",
          ),
          insetPadding: const EdgeInsets.all(20.0),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.white.withOpacity(0.2),
              ),
              foregroundColor: MaterialStateProperty.all<Color>(
                Colors.white,
              ),
              overlayColor: MaterialStateProperty.all<Color>(
                Colors.white.withOpacity(0.2),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.white38,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(18.0),
                  ),
                ),
              )),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.white.withOpacity(0.2),
          hoverColor: Colors.white.withOpacity(0.4),
          splashColor: Colors.white.withOpacity(0.4),
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.white38,
              width: 0.4,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(18.0),
            ),
          ),
        ),
      );
}
