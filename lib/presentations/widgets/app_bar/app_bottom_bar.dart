import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';
import 'package:flutter/material.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: LiquidGlassLayer(
              settings: const LiquidGlassSettings(
                thickness: 50,
                blur: 20,
                glassColor: Color(0xFFBDBDBD),
              ),
              child: SizedBox(
                height: 60,
                child: LiquidGlass(
                  shape: LiquidRoundedSuperellipse(borderRadius: 30),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.home_filled),
                          iconSize: 20,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.calendar_month),
                          iconSize: 20,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.bar_chart),
                          iconSize: 20,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.settings),
                          iconSize: 20,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),

          LiquidGlassLayer(
            settings: const LiquidGlassSettings(
              thickness: 50,
              blur: 20,
              glassColor: Color(0xFFBDBDBD),
            ),
            child: SizedBox(
              height: 60,
              width: 60,
              child: LiquidGlass(
                shape: LiquidRoundedRectangle(borderRadius: 100),
                child: Center(
                  child: IconButton(
                    icon: const Icon(Icons.add, color: Colors.black),
                    iconSize: 20,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
