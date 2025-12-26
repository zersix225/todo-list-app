import 'package:flutter/material.dart';
import 'package:todo_list/presentations/widgets/card_view/card_item.dart';

class CardScrollView extends StatefulWidget {
  const CardScrollView({super.key});

  @override
  State<CardScrollView> createState() => _CardScrollViewState();
}

class _CardScrollViewState extends State<CardScrollView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth,
          height: 115,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CardItem(),
              CardItem(),
            ],
          ),
        );
      },
    );
  }
}
