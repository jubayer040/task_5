import 'package:flutter/material.dart';
import 'package:task_5/core/util/myimage.dart';
import 'package:task_5/features/ticket/presentation/pages/ticket_filter_page.dart';

class TicketCounterFilter extends StatelessWidget {
  const TicketCounterFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("124 tickets"),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => TicketFilterPage()),
            );
          },
          child: Image.asset(MyImage.filterIconImg),
        ),
      ]),
    );
  }
}
