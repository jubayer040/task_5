import 'package:flutter/material.dart';
import 'package:task_5/core/util/mycolor.dart';

class MyDimens {
  static const cmDivider = Divider(color: MyColor.inActiveColor, thickness: .5);

  Widget futureBuilder({
    required BuildContext context,
    required Future future,
    required Widget child,
  }) {
    return FutureBuilder(
      future: future,
      builder: (context, snapShot) {
        if (snapShot.connectionState == ConnectionState.waiting) {
          return getLoadingIndicator();
        } else if (snapShot.hasError) {
          return const Center(child: Text('Error Occured while Fetching!'));
        } else {
          return child;
        }
      },
    );
  }

  AppBar getNormalAppBar(String title, List<Widget> actions, BuildContext ctx,
          [bool backButton = false]) =>
      AppBar(
        title: Text(
          title,
          style: Theme.of(ctx).textTheme.titleMedium!.copyWith(fontSize: 21),
        ),
        actions: actions,
      );

  Widget getNotificationIcon(int count) => Badge.count(
        count: count,
        child: Icon(Icons.notifications_outlined,color: MyColor.iconDark),
      );
  Text getBodyTitleText(String title, BuildContext context,
          {Color color = MyColor.textColor}) =>
      Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold, color: color, letterSpacing: 1.2),
      );
  Text getBodyText(String title, BuildContext context,
          {Color color = MyColor.textThird,
          FontWeight weight = FontWeight.bold}) =>
      Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: weight, letterSpacing: 1.2, color: color),
      );

  Text getBodySecondaryText(String title, BuildContext context,
          {Color color = MyColor.textThird}) =>
      Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(fontWeight: FontWeight.bold, color: color),
      );

  Center getLoadingIndicator() =>
      const Center(child: CircularProgressIndicator());
}
