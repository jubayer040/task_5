import 'package:flutter/material.dart';
import 'package:task_5/features/ticket/data/repository/ticket_repo.dart';
import 'package:task_5/features/ticket/presentation/widgets/tikcet_widgets/ticket_list_item.dart';

class TicketList extends StatelessWidget {
  const TicketList({super.key});

  @override
  Widget build(BuildContext context) {
    final tickets = TicketRepo().tickets;
    return ListView.builder(
      itemCount: tickets.length,
      padding: EdgeInsets.all(15),
      itemBuilder: (context, i) => Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300]!,
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(2, 2),
            ),
            const BoxShadow(
              color: Colors.white,
              spreadRadius: 5,
              blurRadius: 10,
             offset: Offset(-2, -2),
            ),
          ],
        ),
        child: TicketListItem(item: tickets[i])
      ),
    );
  }

 
}
