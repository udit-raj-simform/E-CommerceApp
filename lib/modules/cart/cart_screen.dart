import 'package:e_commerce_app/utils/widgets/module_cart/glassmorphic_cart_item.dart';

import '../../values/app_globals/app_exports.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartStore>();
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Observer(
        builder: (_) => Center(
          child: cart.itemCount == 0
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("No Items in Cart"),
                    const SizedBox(width: 10.0),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Add Items"),
                    ),
                  ],
                )
              : ListView.builder(
                  itemCount: cart.cartItems.length,
                  shrinkWrap: true,
                  itemBuilder: (_, index) => GlassmorphicCartItem(
                    item: cart.cartItems[index],
                  ),
                ),
        ),
      ),
    );
  }
}
