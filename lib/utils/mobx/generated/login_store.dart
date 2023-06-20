import 'package:e_commerce_app/values/app_functions/app_global_functions.dart';

import '../../../values/app_globals/app_exports.dart';

part 'login_store.g.dart';

class LoginStore = Login with _$LoginStore;

abstract class Login with Store {
  @observable
  bool isLoggedIn = false;

  @observable
  bool? isGuestUser;

  @observable
  late ObservableFuture<UserModel> _userFuture;

  @observable
  late UserModel userModel;

  @observable
  String loginStatusMessage = "";

  @observable
  String? userName;

  @observable
  String? email;

  @observable
  String? password;

  @action
  void login(BuildContext context, String? userName, String? password) {
    try {
      checkNullable(userName, password);
      for (var user in UserData.users) {
        if ((user.name.trim().toLowerCase() ==
                userName!.trim().toLowerCase()) &&
            (user.password.trim() == password!.trim())) {
          loginStatusMessage = "Login Successful";
          isLoggedIn = true;
          isGuestUser = false;
        }
      }
      throw Exception("User Not Registered");
    } catch (e) {
      debugPrint(e.toString());
      loginStatusMessage = e.toString();
      isLoggedIn = false;
    } finally {
      AppGlobalFunctions().showSnackBar(context, loginStatusMessage);
    }
  }

  @action
  void guestLogin(context) {
    isGuestUser = true;
    loginStatusMessage = "Successfully Logged In as a Guest";
    isLoggedIn = true;
    AppGlobalFunctions().showSnackBar(context, loginStatusMessage);
  }

  @action
  void signup(
      BuildContext context, String? userName, String? email, String? password) {
    try {
      if ((userName == null) ||
          (password == null) ||
          (email == null) ||
          (userName.isEmpty) ||
          (password.isEmpty) ||
          (email.isEmpty)) {
        throw Exception("UserName & Password Cannot be Empty");
      }
      if (userName.contains("@") ||
          userName.contains("/") ||
          userName.contains("!") ||
          userName.contains("-") ||
          userName.contains("+")) {
        throw Exception("Invalid Username");
      }
      if (isAllIntegers(userName)) {
        throw Exception("Username Cannot contain Numbers Only");
      }
      if (!email.contains("@")) {
        throw Exception("Invalid E-mail");
      }
      if (password.length < 6) {
        throw Exception("Password length must be greater than or equal to Six");
      }
      if (isAllIntegers(password)) {
        throw Exception("Password Cannot contain Numbers Only");
      }
      if (password.toLowerCase() == password) {
        throw Exception("Password Must contain at least One Uppercase");
      }
      if (password.toLowerCase().contains(userName.toLowerCase())) {
        throw Exception("Password Cannot contain UserName");
      }
      UserData.users
          .add(UserModel(name: userName, eMail: email, password: password));
      loginStatusMessage = "SignUp Successful";
      isLoggedIn = true;
    } catch (e) {
      debugPrint(e.toString());
      loginStatusMessage = e.toString();
      isLoggedIn = false;
      isGuestUser = false;
    } finally {
      AppGlobalFunctions().showSnackBar(context, loginStatusMessage);
    }
  }

  @action
  void checkNullable(String? username, String? password) {
    if ((username == null) ||
        (password == null) ||
        (username.isEmpty) ||
        (password.isEmpty)) {
      throw Exception("UserName & Password Cannot be Empty");
    }
    return;
  }

  @action
  bool isAllIntegers(String string) {
    for (int i = 0; i < string.length; i++) {
      if (!isNumeric(string[i])) {
        return false;
      }
    }
    return true;
  }

  @action
  bool isNumeric(String string) {
    return int.tryParse(string) != null;
  }
}
