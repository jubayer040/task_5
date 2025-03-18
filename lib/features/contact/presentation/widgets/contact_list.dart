import 'package:flutter/material.dart';
import 'package:task_5/core/util/mycolor.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/contact/data/repository/contact_repo.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = ContactRepo().contacts;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text("42 Contacts"),
        ),
        const SizedBox(height: 15), 
        Expanded(
          child: ListView.builder(
            itemCount: contacts.length,
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
                  Row(
                    children: [
                      CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage(contacts[i].image)),
                      const SizedBox(width: 15),
                      MyDimens().getBodyTitleText(contacts[i].name, context),
                      Spacer(),
                      Icon(Icons.more_vert),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _getContactBodyItem(
                      Icons.email_outlined, contacts[i].email, context),
                  const SizedBox(height: 5),
                  _getContactBodyItem(
                      Icons.call_outlined, contacts[i].contact, context),
                  const SizedBox(height: 5),
                  _getContactBodyItem(
                      Icons.location_on_outlined, contacts[i].address, context),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getContactBodyItem(IconData icon, String title, BuildContext ctx) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 15,
          ),
          const SizedBox(width: 10),
          MyDimens().getBodyText(title, ctx,
              color: MyColor.textColor, weight: FontWeight.normal),
        ],
      );
}
