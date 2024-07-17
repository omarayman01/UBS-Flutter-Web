import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:ubs/view/constants/app_theme.dart';
import 'package:ubs/view/extentions/hover_extensions.dart';

class NavigationBarItemMenu extends StatefulWidget {
  const NavigationBarItemMenu({Key? key, this.menu, required this.title})
      : super(key: key);

  final Widget? menu;
  final String title;

  @override
  State<NavigationBarItemMenu> createState() => _NavigationBarItemMenuState();
}

class _NavigationBarItemMenuState extends State<NavigationBarItemMenu> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Builder(
      builder: (BuildContext localContext) {
        return GestureDetector(
          onTap: () {
            showPopover(
              context: context,
              bodyBuilder: (context) => widget.menu!,
              width: screenWidth * 0.18,
              height: screenHeight * 0.14,
              backgroundColor: Colors.grey[300]!,
              direction: PopoverDirection.bottom,
              // arrowDxOffset: position.dx,
            );

            // Handle popover closed event to reset state
          },
          child: Text(
            widget.title,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppTheme.primary),
          ).moveUpONHover.showCursorOnHover,
        );
      },
    );
  }
}
