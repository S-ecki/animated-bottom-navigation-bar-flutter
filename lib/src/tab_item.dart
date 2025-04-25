import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    required this.isActive,
    this.showBadge,
    super.key,
    this.iconData,
    this.iconSize = 24,
    this.activeColor = Colors.deepPurpleAccent,
    this.inactiveColor = Colors.black,
    this.child,
  });
  final IconData? iconData;
  final double? iconSize;
  final bool isActive;
  final Color? activeColor;
  final Color? inactiveColor;
  final bool? showBadge;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Badge(
        isLabelVisible: showBadge ?? false,
        child: child ?? _buildDefaultTab(),
      ),
    );
  }

  Widget _buildDefaultTab() {
    return Icon(
      iconData,
      color: isActive ? activeColor : inactiveColor,
      size: iconSize,
    );
  }
}
