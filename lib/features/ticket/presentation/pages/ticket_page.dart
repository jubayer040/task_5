import 'package:flutter/material.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/ticket/presentation/widgets/ticket_counter_filter.dart';
import 'package:task_5/features/ticket/presentation/widgets/ticket_list.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  final _searchFiled = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // appbar
        MyDimens().getNormalAppBar("Gain Solution",
            [MyDimens().getNotificationIcon(3), SizedBox(width: 15)], context),
        const SizedBox(height: 5),
        TicketCounterFilter(),
        SizedBox(height: size.height * .7, child: TicketList()),
      ],
    );
  }

  @override
  void dispose() {
    _searchFiled.dispose();
    super.dispose();
  }
}
