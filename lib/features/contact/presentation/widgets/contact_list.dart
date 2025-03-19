import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/contact/presentation/provider/contact_provider.dart';
import 'package:task_5/features/contact/presentation/widgets/contact_list_item.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return MyDimens().futureBuilder(
      context: context,
      future: Provider.of<ContactProvider>(context, listen: false)
          .searchContactList(context),
      child: _getBody(context),
    );
  }

  Widget _getBody(BuildContext context) {
    final contacts = Provider.of<ContactProvider>(context).contactList;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // contacts-count
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text("${contacts.length} Contacts"),
        ),
        const SizedBox(height: 15),
        // contact-list
        Expanded(
          child: ListView.builder(
            itemCount: contacts.length,
            padding: EdgeInsets.all(14),
            itemBuilder: (context, i) {
              return ContactListItem(contact: contacts[i]);
            },
          ),
        ),
      ],
    );
  }
}
