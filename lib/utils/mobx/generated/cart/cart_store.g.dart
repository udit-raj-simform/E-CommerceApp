// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CartStore on Cart, Store {
  Computed<bool>? _$hasItemsComputed;

  @override
  bool get hasItems => (_$hasItemsComputed ??=
          Computed<bool>(() => super.hasItems, name: 'Cart.hasItems'))
      .value;

  late final _$cartItemsAtom = Atom(name: 'Cart.cartItems', context: context);

  @override
  List<CartItem> get cartItems {
    _$cartItemsAtom.reportRead();
    return super.cartItems;
  }

  @override
  set cartItems(List<CartItem> value) {
    _$cartItemsAtom.reportWrite(value, super.cartItems, () {
      super.cartItems = value;
    });
  }

  late final _$itemCountAtom = Atom(name: 'Cart.itemCount', context: context);

  @override
  int get itemCount {
    _$itemCountAtom.reportRead();
    return super.itemCount;
  }

  @override
  set itemCount(int value) {
    _$itemCountAtom.reportWrite(value, super.itemCount, () {
      super.itemCount = value;
    });
  }

  late final _$CartActionController =
      ActionController(name: 'Cart', context: context);

  @override
  void initializeItemCount() {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.initializeItemCount');
    try {
      return super.initializeItemCount();
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearCart() {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.clearCart');
    try {
      return super.clearCart();
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateItemCount() {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.updateItemCount');
    try {
      return super.updateItemCount();
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  void downDateItemCount() {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.downDateItemCount');
    try {
      return super.downDateItemCount();
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addItem(CartItem item) {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.addItem');
    try {
      return super.addItem(item);
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem(CartItem item) {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.removeItem');
    try {
      return super.removeItem(item);
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItemAtIndex(int index) {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.removeItemAtIndex');
    try {
      return super.removeItemAtIndex(index);
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateItem(CartItem oldItem, CartItem newItem) {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.updateItem');
    try {
      return super.updateItem(oldItem, newItem);
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateItemAIndex(int index, CartItem newItem) {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.updateItemAIndex');
    try {
      return super.updateItemAIndex(index, newItem);
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool hasItem(CartItem item) {
    final _$actionInfo =
        _$CartActionController.startAction(name: 'Cart.hasItem');
    try {
      return super.hasItem(item);
    } finally {
      _$CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cartItems: ${cartItems},
itemCount: ${itemCount},
hasItems: ${hasItems}
    ''';
  }
}
