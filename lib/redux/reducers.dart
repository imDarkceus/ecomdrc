import 'package:ecom/models/app_state.dart';
import 'package:ecom/models/product.dart';
import 'package:ecom/models/user.dart';
import 'package:ecom/redux/actions.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
      user: userReducer(state.user, action),
      products: productsReducer(state.products, action));
}

User userReducer(User user, dynamic action) {
  if (action is GetUserAction) {
    return action.user;
  }
  return user;
}

 productsReducer( products, dynamic action) {
  if (action is GetProductsAction) {
    return action.products;
  }
  return products;
}
