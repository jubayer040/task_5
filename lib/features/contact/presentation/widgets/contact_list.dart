import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/contact/data/models/contact_item.dart';
import 'package:task_5/features/contact/presentation/provider/contact_provider.dart';
import 'package:task_5/features/contact/presentation/widgets/contact_list_item.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ContactProvider>(context, listen: false);
    return FutureBuilder(
      future: data.searchContactList(context),
      builder: (context, snapShot) {
        if (snapShot.connectionState == ConnectionState.waiting) {
          return MyDimens().getLoadingIndicator;
        } else if (snapShot.hasError) {
          return const Center(child: Text('Error Occured while Fetching!'));
        } else {
          final contacts = Provider.of<ContactProvider>(context).contactList;
          return _getBody(contacts, context);
        }
      },
    );
  }

  Widget _getBody(List<ContactItem> contacts, BuildContext context) {
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
