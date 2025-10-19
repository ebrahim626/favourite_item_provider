import 'package:favourite_items_provider/model/item.dart';
import 'package:favourite_items_provider/provider/favourite_states.dart';
import 'package:flutter_riverpod/legacy.dart';


final favouriteProvider = StateNotifierProvider<FavouriteNotifier, FavouriteStates>((ref){
  return FavouriteNotifier();
});

class FavouriteNotifier extends StateNotifier<FavouriteStates> {
  FavouriteNotifier() : super(FavouriteStates(allItem: [], favouriteItem: [], search: ''));

  void addItem() {
    List<Item> item = [
      Item(name: 'MacBook', favourite: true, id: 1),
      Item(name: 'iPhone', favourite: false, id: 2),
      Item(name: 'G-force 3060', favourite: false, id: 3),
      Item(name: 'Samsung Ultra', favourite: true, id: 4),
      Item(name: 'Google Pixel 9', favourite: false, id: 5),
      Item(name: 'iPad Pro 13', favourite: true, id: 6)
    ];
    state = state.copyWith(allItem: item.toList(),favouriteItem: item.toList());
  }

}