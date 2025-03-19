// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:task_5/core/util/mycolor.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/contact/data/models/contact_item.dart';

class ContactListItem extends StatelessWidget {
  const ContactListItem({super.key, required this.contact});
  final ContactItem contact;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  radius: 18, backgroundImage: AssetImage(contact.image)),
              const SizedBox(width: 15),
              MyDimens().getBodyTitleText(contact.name, context),
              Spacer(),
              Icon(Icons.more_vert),
            ],
          ),
          const SizedBox(height: 20),
          _getContactBodyItem(Icons.email_outlined, contact.email, context),
          const SizedBox(height: 5),
          _getContactBodyItem(Icons.call_outlined, contact.contact, context),
          const SizedBox(height: 5),
          _getContactBodyItem(
              Icons.location_on_outlined, contact.address, context),
        ],
      ),
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
