import 'package:e_commerce_app/utils/mobx/generated/login_store.dart';
import 'package:e_commerce_app/values/app_globals/app_exports.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;

  // late final LoginStore loginStore;
  bool showPassword = false;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    // loginStore = LoginStore();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                      onPressed: () => setState(() {
                            showPassword = !showPassword;
                          }),
                      icon: const Icon(Icons.remove_red_eye_outlined)),
                ),
                obscureText: showPassword,
              ),
              const SizedBox(height: 25.0),
              ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                    child: Text('Login'),
                  ),
                ),
                onPressed: () => context.read<LoginStore>().login(context,
                    _usernameController.text, _passwordController.text),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.yellow.withOpacity(0.6),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                    child: Text('Login as Guest'),
                  ),
                ),
                onPressed: () => context.read<LoginStore>().guestLogin(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
