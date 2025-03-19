import 'package:flutter/material.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/ticket/presentation/widgets/ticket_filter_widgets/ticket_filter_brand.dart';
import 'package:task_5/features/ticket/presentation/widgets/ticket_filter_widgets/ticket_filter_priority.dart';
import 'package:task_5/features/ticket/presentation/widgets/ticket_filter_widgets/ticket_filter_tags.dart';

class TicketFilterPage extends StatefulWidget {
  const TicketFilterPage({super.key});
  @override
  State<TicketFilterPage> createState() => _TicketFilterPageState();
}

class _TicketFilterPageState extends State<TicketFilterPage> {
  final _searchTagField = TextEditingController();
  final _selectedPriority = ValueNotifier<String>("");
  final _selectedBrand = ValueNotifier<int?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyDimens().getNormalAppBar("Filters", _getApplyButton, context, true),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            spacing: 30,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // brand
              TicketFilterBrand(selectedBrand: _selectedBrand),
              // priority
              TicketFilterPriority(selectedPriority: _selectedPriority),
              // tags
              TicketFilterTags(selectedTagField: _searchTagField)
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> get _getApplyButton =>
      [TextButton(onPressed: () {}, child: Text("Apply")),SizedBox(width: 15)];
}
