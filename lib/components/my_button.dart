import 'package:flutter/material.dart';

import 'font_styles.dart';
import 'my_colors.dart';

class MyButtonRegular extends StatelessWidget {
  const MyButtonRegular({
    Key? key,
    this.icon,
    this.title,
    this.color = blue,
    this.splashColor = grey,
    required this.onTap,
    this.titleColor = white,
    required this.size,
    this.style,
    this.direction = TextDirection.ltr,
  }) : super(key: key);

  final String? title;
  final IconData? icon;
  final Color splashColor;
  final Color color;
  final Function() onTap;
  final Color titleColor;
  final Size size;
  final TextStyle? style;
  final TextDirection direction;


  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: size.width * .65,
      ),
      child: MaterialButton(
        onPressed: onTap,
        elevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        disabledElevation: 0,
        minWidth: size.width * .5,
        splashColor: splashColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 08,
        ),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        color: color,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          textDirection: direction,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title == ""
                ? const SizedBox()
                : Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 05,
                        vertical: 05,
                      ),
                      child: Text(
                        title!,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: style == null
                            ? h4.copyWith(
                                color: titleColor,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              )
                            : style!.copyWith(
                                color: titleColor,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                      ),
                    ),
                  ),
            icon != null
                ? Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 05,
                      ),
                      child: Icon(
                        icon!,
                        color: titleColor,
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
