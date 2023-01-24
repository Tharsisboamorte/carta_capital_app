import 'package:carta_capital_app/utils/default.dart';
import 'package:flutter/material.dart';

import '../buttons/custom_button.dart';

class TitleAppBar extends StatelessWidget with PreferredSizeWidget {
  const TitleAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ]),
      title: Center(
          child: RichText(
              text: const TextSpan(
                  text: "Carta",
                  style: TextStyle(
                      color: DefaultConfig.defaultThemeColor, fontSize: 20),
                  children: <TextSpan>[
            TextSpan(
              text: "Capital",
              style: TextStyle(color: Colors.black, fontSize: 20),
            )
          ]))),
      actions: const [
        CustomElevatedButton(page: "/paymentPage", label: "Assinar")
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
