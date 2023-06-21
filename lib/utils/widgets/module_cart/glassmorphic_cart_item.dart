import 'package:e_commerce_app/values/app_globals/app_exports.dart';

class GlassmorphicCartItem extends StatelessWidget {
  final CartItem item;

  const GlassmorphicCartItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final store = context.read<CartStore>();
    final index =
        store.cartItems.indexWhere((element) => element.name == item.name);
    final quantity = store.cartItems[index].quantity;
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.purple.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.purple.withOpacity(0.6),
          width: 0.3,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name: ${item.name}',
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Unit: ${item.unit}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Price: \$${item.price.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'Quantity: ${item.quantity}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(item.image),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => store.updateItemAIndex(
                  index,
                  store.cartItems[index].copyWith(quantity: quantity + 1),
                ),
                icon: const Icon(Icons.add),
              ),
              Text(
                quantity.toString(),
              ),
              IconButton(
                onPressed: () => quantity == 0
                    ? store.removeItemAtIndex(index)
                    : store.updateItemAIndex(
                        index,
                        store.cartItems[index].copyWith(quantity: quantity - 1),
                      ),
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () => store.removeItemAtIndex(index),
                icon: Icon(
                  Icons.delete_outline_rounded,
                  color: Colors.redAccent.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
