import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_5/core/util/my_enum.dart';
import 'package:task_5/core/util/mycolor.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/ticket/data/repository/ticket_repo.dart';

class TicketList extends StatelessWidget {
  const TicketList({super.key});

  @override
  Widget build(BuildContext context) {
    final tickets = TicketRepo().tickets;
    return ListView.builder(
      itemCount: tickets.length,
      padding: EdgeInsets.all(14),
      itemBuilder: (context, i) => Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: MyColor.cardBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // status
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: tickets[i].currentStatus.color.withOpacity(0.09),
              ),
              child: Text(
                tickets[i].currentStatus.label,
                style: TextStyle(
                  fontSize: 10,
                  color: tickets[i].currentStatus.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            // id
            MyDimens().getBodySecondaryText("#id ${tickets[i].id}", context),
            const SizedBox(height: 15),
            // details
            Text(tickets[i].details,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 10),
            // name & date
            Row(
              children: [
                MyDimens().getBodyText(tickets[i].name, context,
                    color: MyColor.textColor,weight: FontWeight.normal),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 3,
                  width: 3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColor.inActiveColor,
                  ),
                ),
                MyDimens().getBodySecondaryText(
                    DateFormat('MMMM d, yyyy - HH:mm')
                        .format(tickets[i].date),
                    context),
              ],
            ),
            MyDimens.cmDivider,
          ],
        ),
      ),
    );
  }
}
