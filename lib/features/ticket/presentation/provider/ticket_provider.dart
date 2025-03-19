import 'package:flutter/material.dart';
import 'package:task_5/core/base/base_client_class.dart';
import 'package:task_5/core/util/myconstant.dart';
import 'package:task_5/features/ticket/data/models/ticket_tag.dart';

class TicketProvider with ChangeNotifier{
  final List<TicketTag> _tagList = [];

  List<TicketTag> get tagList => [..._tagList];

  Future<void> getTagList(BuildContext context) async {
    final result = await BaseClientClass.getData(
      path: Myconstant.ticketTagUrl,
      ctx: context,
    );
    if (result != null) {
       _tagList.clear();
      for (var map in result) {
       _tagList.add (TicketTag.fromJson(map));
      }
      notifyListeners();
    }
  }
}