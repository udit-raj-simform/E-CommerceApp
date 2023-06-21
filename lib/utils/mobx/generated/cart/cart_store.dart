import '../../../../values/app_globals/app_exports.dart';

part 'cart_store.g.dart';

class CartStore = Cart with _$CartStore;

abstract class Cart with Store {
  @observable
  List<CartItem> cartItems = ObservableList<CartItem>();

  @observable
  int itemCount = 0;

  @action
  void initializeItemCount() => itemCount = cartItems.length;

  @action
  void clearCart() => cartItems.clear();

  @action
  void updateItemCount() {
    debugPrint(itemCount.toString());
    itemCount++;
  }

  @action
  void downDateItemCount() {
    debugPrint(itemCount.toString());
    itemCount--;
  }

  @action
  void addItem(CartItem item) {
    int? index = cartItems.indexWhere((element) => element.name == item.name);
    if (index != -1) {
      updateItemAIndex(
        index,
        item.copyWith(quantity: cartItems[index].quantity + 1),
      );
    } else {
      updateItemCount();
      cartItems.add(item);
      updateItemAIndex(
        cartItems.length - 1,
        item.copyWith(quantity: 1),
      );
      debugPrint(cartItems[cartItems.length - 1].toString());
    }
  }

  @action
  void removeItem(CartItem item) => cartItems.remove(item);

  @action
  void removeItemAtIndex(int index) {
    cartItems.removeAt(index);
    downDateItemCount();
  }

  @action
  updateItem(CartItem oldItem, CartItem newItem) {
    int index = cartItems.indexWhere((element) => element.name == oldItem.name);
    cartItems[index] = newItem;
  }

  @action
  updateItemAIndex(int index, CartItem newItem) => cartItems[index] = newItem;

  @computed
  bool get hasItems => cartItems.isNotEmpty;

  @action
  bool hasItem(CartItem item) {
    var i = cartItems.where((element) => element.name == item.name);
    return (i.isEmpty) ? false : true;
  }
}
