import 'package:flutter/material.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/ticket/presentation/widgets/tikcet_widgets/ticket_counter_filter.dart';
import 'package:task_5/features/ticket/presentation/widgets/tikcet_widgets/ticket_list.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // appbar
        MyDimens().getNormalAppBar("Gain Solution",
            [MyDimens().getNotificationIcon(3), SizedBox(width: 15)], context),
        const SizedBox(height: 5),
        TicketCounterFilter(),
        Expanded( child: TicketList()),
      ],
    );
  }
}
