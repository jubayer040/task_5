import 'package:flutter/material.dart';
import 'package:task_5/core/util/mydimens.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyDimens().getNormalAppBar("My Ticket", [], context),
      ],
    );
  }
}
