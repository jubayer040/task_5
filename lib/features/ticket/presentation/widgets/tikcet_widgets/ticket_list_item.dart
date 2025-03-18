import 'package:flutter/material.dart';
import 'package:task_5/core/util/my_enum.dart';
import 'package:task_5/features/ticket/data/models/ticket_item.dart';
import 'package:intl/intl.dart';
import 'package:task_5/core/util/mycolor.dart';
import 'package:task_5/core/util/mydimens.dart';

class TicketListItem extends StatelessWidget {
  const TicketListItem({super.key, required this.item});
  final TicketItem item;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // status
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: item.currentStatus.color.withOpacity(0.09),
          ),
          child: Text(
            item.currentStatus.label,
            style: TextStyle(
              fontSize: 10,
              color: item.currentStatus.color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
        IntrinsicHeight(
          child: Row(
            children: [
              // left border
              Container(
                width: 2.5,
                margin: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: item.currentStatus.color,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // id
                    MyDimens().getBodySecondaryText("#id ${item.id}", context),
                    const SizedBox(height: 5),
                    // details
                    Text(
                      item.details,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    // name & date
                    Row(
                      children: [
                        MyDimens().getBodyText(item.name, context,
                            color: MyColor.textColor,
                            weight: FontWeight.normal),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          height: 4,
                          width: 4,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: MyColor.inActiveColor,
                          ),
                        ),
                        MyDimens().getBodySecondaryText(
                            DateFormat('MMMM d, yyyy - HH:mm')
                                .format(item.date),
                            context),
                      ],
                    ),
                    MyDimens.cmDivider,
                    // priorities
                    Row(
                      spacing: 10,
                      children: [
                        MyDimens().getPriorityBoxItem(
                          item.ticketPriority.label,
                          context,
                          item.ticketPriority.color,
                        ),
                        MyDimens().getPriorityBoxItem("Open", context, null),
                        if (item.currentStatus == TickerStatus.responseOverdue)
                          MyDimens().getPriorityBoxItem("Spam", context, null),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
