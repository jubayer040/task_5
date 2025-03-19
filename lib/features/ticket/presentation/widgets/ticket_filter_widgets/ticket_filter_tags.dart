// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/common/presentation/widgets/cm_search_field.dart';
import 'package:task_5/features/ticket/data/models/ticket_tag.dart';
import 'package:task_5/features/ticket/presentation/provider/ticket_provider.dart';

class TicketFilterTags extends StatelessWidget {
  const TicketFilterTags({super.key, required this.selectedTagField});
  final TextEditingController selectedTagField;
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<TicketProvider>(context, listen: false);
    return FutureBuilder(
      future: data.getTagList(context),
      builder: (context, snapShot) {
        if (snapShot.connectionState == ConnectionState.waiting) {
          return MyDimens().getLoadingIndicator;
        } else if (snapShot.hasError) {
          return const Center(child: Text('Error Occured while Fetching!'));
        } else {
          final tags = Provider.of<TicketProvider>(context).tagList;
          return _getBody(tags, context);
        }
      },
    );
  }

  Widget _getBody(List<TicketTag> tags, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        MyDimens().getBodyTitleText("Tags", context),
        const SizedBox(height: 10),
        // searchffield
        CmSearchField(controller: selectedTagField, hintText: "Search Tags"),
        const SizedBox(height: 10),
        // tags
        Wrap(
          direction: Axis.horizontal,
          spacing: 10.0,
          runSpacing: 10.0,
          children: List.generate(
            tags.length,
            (i) => MyDimens().getPriorityBoxItem(tags[i].tag, context, null),
          ),
        ),
      ],
    );
  }
}
