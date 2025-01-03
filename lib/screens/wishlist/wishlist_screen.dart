import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_store/screens/wishlist/wishlist_widget.dart';
import 'package:grocery_store/services/utils.dart';
import 'package:grocery_store/widgets/back_widget.dart';
import 'package:grocery_store/widgets/text_widget.dart';

class WishlistScreen extends StatelessWidget {
  static const routeName = '/WishlistScreen';
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    final Color color = Utils(context).color;
    return Scaffold(
      appBar: AppBar(
        leading: const BackWidget(),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text: 'Wishlist',
          color: color,
          isTitle: true,
          textSize: 22,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyBroken.delete,
              color: color,
            ),
          ),
        ],
      ),
      body: WishlistWidget(),
    );
  }
}
