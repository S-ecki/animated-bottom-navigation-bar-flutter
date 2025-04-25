import 'package:animated_bottom_navigation_bar/src/bubble_selection_painter.dart';
import 'package:animated_bottom_navigation_bar/src/tab_item.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    required this.isActive,
    required this.bubbleRadius,
    required this.maxBubbleRadius,
    required this.bubbleColor,
    required this.activeColor,
    required this.inactiveColor,
    required this.iconData,
    required this.iconScale,
    required this.iconSize,
    required this.onTap,
    super.key,
    this.child,
    this.showBadge,
  });
  final bool isActive;
  final double bubbleRadius;
  final double maxBubbleRadius;
  final Color? bubbleColor;
  final Color? activeColor;
  final Color? inactiveColor;
  final IconData? iconData;
  final double iconScale;
  final double? iconSize;
  final VoidCallback onTap;
  final bool? showBadge;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomPaint(
        painter: BubblePainter(
          bubbleRadius: isActive ? bubbleRadius : 0,
          bubbleColor: bubbleColor,
          maxBubbleRadius: maxBubbleRadius,
        ),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: onTap,
          child: Transform.scale(
            scale: isActive ? iconScale : 1,
            child: TabItem(
              isActive: isActive,
              iconData: iconData,
              iconSize: iconSize,
              activeColor: activeColor,
              inactiveColor: inactiveColor,
              showBadge: showBadge,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
