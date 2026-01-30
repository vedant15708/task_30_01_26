import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color bgColor;
  final bool center;
  final bool showLeading;
  final IconData leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? onLeadingPressed;
  final bool showEndDrawer;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.bgColor,
    this.center = false,
    this.showLeading = true,
    this.leadingIcon = Icons.arrow_back,
    this.actions,
    this.onLeadingPressed,
    this.showEndDrawer = false,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> appBarActions = actions ?? [];
    if (showEndDrawer) {
      appBarActions.add(const EndDrawerButton());
    }
    return AppBar(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      backgroundColor: bgColor,
      centerTitle: center,
      automaticallyImplyLeading: false,
      leading: showLeading
          ? IconButton(
              icon: Icon(leadingIcon),
              onPressed: onLeadingPressed ?? () => Navigator.maybePop(context),
              color: Colors.white,
            )
          : null,
      iconTheme: const IconThemeData(color: Colors.white, size: 28),
      actionsIconTheme: const IconThemeData(color: Colors.white, size: 24),
      actions: appBarActions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
