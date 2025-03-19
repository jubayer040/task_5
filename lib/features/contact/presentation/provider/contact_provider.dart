import 'package:flutter/material.dart';
import 'package:task_5/core/base/base_client_class.dart';
import 'package:task_5/core/util/myconstant.dart';
import 'package:task_5/features/contact/data/models/contact_item.dart';

class ContactProvider with ChangeNotifier {
  final List<ContactItem> _contactList = [];

  List<ContactItem> get contactList => [..._contactList];

  Future<void> searchContactList(BuildContext context) async {
    final result = await BaseClientClass.getData(
      path: Myconstant.contactListUrl,
      ctx: context,
    );
    if (result != null) {
       _contactList.clear();
      for (var map in result) {
       _contactList.add (ContactItem.fromJson(map));
      }
      notifyListeners();
    }
  }
}
