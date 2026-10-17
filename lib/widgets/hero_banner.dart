import 'package:flutter/material.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({
    super.key,
    required this.imageAsset,
    required this.caption,
  });

  final String imageAsset;
  final String caption;

  static const double _height = 144;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: ColoredBox(
        color: Color(0xffEBF6F1),
        child: SizedBox(
          height: _height,
          width: double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                imageAsset,
                fit: BoxFit.cover,

                errorBuilder: (_, _, _) =>
                    ColoredBox(color: Color(0xffE5F0EB)),
              ),
              // Fades the photo into the card color so the caption is legible.
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xffEBF6F1),
                      Color(0xffEBF6F1).withValues(alpha: 0.6),
                      Color(0xffEBF6F1).withValues(alpha: 0),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FractionallySizedBox(
                    widthFactor: 0.7,
                    alignment: AlignmentDirectional.centerStart,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xffB1EFDF),
                          child: Icon(
                            Icons.health_and_safety_outlined,
                            size: 16,
                            color: Color(0xff00201B),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            caption,
                            style: TextStyle(
                              color: Color(0xff2B685C),
                              fontSize: 12,
                              height: 18 / 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
