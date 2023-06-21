// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on Login, Store {
  late final _$isLoggedInAtom =
      Atom(name: 'Login.isLoggedIn', context: context);

  @override
  bool get isLoggedIn {
    _$isLoggedInAtom.reportRead();
    return super.isLoggedIn;
  }

  @override
  set isLoggedIn(bool value) {
    _$isLoggedInAtom.reportWrite(value, super.isLoggedIn, () {
      super.isLoggedIn = value;
    });
  }

  late final _$isSignupScreenAtom =
      Atom(name: 'Login.isSignupScreen', context: context);

  @override
  bool get isSignupScreen {
    _$isSignupScreenAtom.reportRead();
    return super.isSignupScreen;
  }

  @override
  set isSignupScreen(bool value) {
    _$isSignupScreenAtom.reportWrite(value, super.isSignupScreen, () {
      super.isSignupScreen = value;
    });
  }

  late final _$isGuestUserAtom =
      Atom(name: 'Login.isGuestUser', context: context);

  @override
  bool? get isGuestUser {
    _$isGuestUserAtom.reportRead();
    return super.isGuestUser;
  }

  @override
  set isGuestUser(bool? value) {
    _$isGuestUserAtom.reportWrite(value, super.isGuestUser, () {
      super.isGuestUser = value;
    });
  }

  late final _$_userFutureAtom =
      Atom(name: 'Login._userFuture', context: context);

  @override
  ObservableFuture<UserModel> get _userFuture {
    _$_userFutureAtom.reportRead();
    return super._userFuture;
  }

  @override
  set _userFuture(ObservableFuture<UserModel> value) {
    _$_userFutureAtom.reportWrite(value, super._userFuture, () {
      super._userFuture = value;
    });
  }

  late final _$userModelAtom = Atom(name: 'Login.userModel', context: context);

  @override
  UserModel get userModel {
    _$userModelAtom.reportRead();
    return super.userModel;
  }

  @override
  set userModel(UserModel value) {
    _$userModelAtom.reportWrite(value, super.userModel, () {
      super.userModel = value;
    });
  }

  late final _$loginStatusMessageAtom =
      Atom(name: 'Login.loginStatusMessage', context: context);

  @override
  String get loginStatusMessage {
    _$loginStatusMessageAtom.reportRead();
    return super.loginStatusMessage;
  }

  @override
  set loginStatusMessage(String value) {
    _$loginStatusMessageAtom.reportWrite(value, super.loginStatusMessage, () {
      super.loginStatusMessage = value;
    });
  }

  late final _$userNameAtom = Atom(name: 'Login.userName', context: context);

  @override
  String? get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String? value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  late final _$emailAtom = Atom(name: 'Login.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom = Atom(name: 'Login.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$LoginActionController =
      ActionController(name: 'Login', context: context);

  @override
  void goToRegistration() {
    final _$actionInfo =
        _$LoginActionController.startAction(name: 'Login.goToRegistration');
    try {
      return super.goToRegistration();
    } finally {
      _$LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic gotoLogin() {
    final _$actionInfo =
        _$LoginActionController.startAction(name: 'Login.gotoLogin');
    try {
      return super.gotoLogin();
    } finally {
      _$LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void login(BuildContext context, String? userName, String? password) {
    final _$actionInfo =
        _$LoginActionController.startAction(name: 'Login.login');
    try {
      return super.login(context, userName, password);
    } finally {
      _$LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void guestLogin(dynamic context) {
    final _$actionInfo =
        _$LoginActionController.startAction(name: 'Login.guestLogin');
    try {
      return super.guestLogin(context);
    } finally {
      _$LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void signup(
      BuildContext context, String? userName, String? email, String? password) {
    final _$actionInfo =
        _$LoginActionController.startAction(name: 'Login.signup');
    try {
      return super.signup(context, userName, email, password);
    } finally {
      _$LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logout(BuildContext context) {
    final _$actionInfo =
        _$LoginActionController.startAction(name: 'Login.logout');
    try {
      return super.logout(context);
    } finally {
      _$LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkNullable(String? username, String? password) {
    final _$actionInfo =
        _$LoginActionController.startAction(name: 'Login.checkNullable');
    try {
      return super.checkNullable(username, password);
    } finally {
      _$LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isAllIntegers(String string) {
    final _$actionInfo =
        _$LoginActionController.startAction(name: 'Login.isAllIntegers');
    try {
      return super.isAllIntegers(string);
    } finally {
      _$LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isNumeric(String string) {
    final _$actionInfo =
        _$LoginActionController.startAction(name: 'Login.isNumeric');
    try {
      return super.isNumeric(string);
    } finally {
      _$LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoggedIn: ${isLoggedIn},
isSignupScreen: ${isSignupScreen},
isGuestUser: ${isGuestUser},
userModel: ${userModel},
loginStatusMessage: ${loginStatusMessage},
userName: ${userName},
email: ${email},
password: ${password}
    ''';
  }
}
