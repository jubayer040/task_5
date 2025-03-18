import 'package:flutter/material.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/common/presentation/widgets/cm_dropdown_field.dart';
import 'package:task_5/features/ticket/data/repository/ticket_filter_repo.dart';

class TicketFilterPriority extends StatelessWidget {
  const TicketFilterPriority({super.key,required this.selectedPriority});
  final ValueNotifier selectedPriority;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyDimens().getBodyTitleText("Brand", context),
        const SizedBox(height: 10),
        CmDropDownField(
          dropList: TicketFilterRepo.ticketPriorites,
          selectedVal: selectedPriority,
          title: "Select Prioriy",
        ),
      ],
    );
  }
}
