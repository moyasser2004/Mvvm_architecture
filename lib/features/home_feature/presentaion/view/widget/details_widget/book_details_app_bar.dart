import 'package:flutter/material.dart';

class BookDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(10),
        child: IconButton(
          splashRadius: 10,
          onPressed: () {},
          icon: const Icon(Icons.clear_outlined),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: IconButton(
            splashRadius: 10,
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(47);
}
