import 'package:flutter/material.dart';

class EgyptFlag extends StatelessWidget {
  const EgyptFlag({super.key});

  static const _red = Color(0xffCE1126);
  static const _black = Color(0xff000000);
  static const _gold = Color(0xffC09300);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(2),
      child: SizedBox(
        width: 24,
        height: 16,
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Column(
              children: [
                Expanded(
                  child: ColoredBox(
                    color: _red,
                    child: SizedBox.expand(),
                  ),
                ),
                Expanded(
                  child: ColoredBox(
                    color: Colors.white,
                    child: SizedBox.expand(),
                  ),
                ),
                Expanded(
                  child: ColoredBox(
                    color: _black,
                    child: SizedBox.expand(),
                  ),
                ),
              ],
            ),
            Container(
              width: 4,
              height: 5,
              decoration: const BoxDecoration(
                color: _gold,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
