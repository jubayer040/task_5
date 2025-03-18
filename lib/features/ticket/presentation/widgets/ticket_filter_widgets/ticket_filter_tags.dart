// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/common/presentation/widgets/cm_search_field.dart';
import 'package:task_5/features/ticket/data/repository/ticket_filter_repo.dart';

class TicketFilterTags extends StatelessWidget {
  const TicketFilterTags({super.key, required this.selectedTagField});
  final TextEditingController selectedTagField;

  @override
  Widget build(BuildContext context) {
    final tags = TicketFilterRepo.ticketTags;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyDimens().getBodyTitleText("Tags", context),
        const SizedBox(height: 10),
        CmSearchField(controller: selectedTagField, hintText: "Search Tags"),
        const SizedBox(height:10),
        Wrap(
          direction: Axis.horizontal,spacing: 10.0,
            runSpacing: 10.0,
          children: List.generate(
            tags.length,
            (i) => MyDimens().getPriorityBoxItem(tags[i], context, null),
          ),
        ),
      ],
    );
  }
}
