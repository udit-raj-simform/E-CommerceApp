import 'package:e_commerce_app/modules/cart/cart_screen.dart';
import 'package:e_commerce_app/modules/home/home_screen.dart';
import 'package:e_commerce_app/values/app_globals/app_exports.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedScreenIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black.withOpacity(0.2),
      ),
      body: screens[_selectedScreenIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton.extended(
              onPressed: () => setState(() => _selectedScreenIndex = 0),
              label: const Text("Home"),
              icon: const Icon(Icons.home_rounded),
            ),
            FloatingActionButton.extended(
              onPressed: () => setState(() => _selectedScreenIndex = 1),
              label: const Text("Cart"),
              icon: Badge(
                backgroundColor: Colors.red,
                textColor: Colors.white,
                label: Observer(
                  builder: (_) => Text(
                    context.read<CartStore>().itemCount.toString(),
                  ),
                ),
                child: const Icon(Icons.shopping_cart_sharp),
              ),
            ),
            FloatingActionButton.extended(
              onPressed: () => context.read<LoginStore>().logout(context),
              label: const Text("Logout"),
              icon: const Icon(Icons.logout_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
