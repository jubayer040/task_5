import 'package:flutter/material.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/common/presentation/widgets/cm_search_field.dart';
import 'package:task_5/features/contact/presentation/widgets/contact_list.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});
  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _searchFiled = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyDimens().getNormalAppBar("Gain Solution",
            [MyDimens().getNotificationIcon(3), SizedBox(width: 15)], context),
        Padding(
          padding: const EdgeInsets.all(15),
          child: CmSearchField(controller: _searchFiled),
        ),
        const SizedBox(height: 5),
        SizedBox(height: size.height * .7, child: ContactList()),
      ],
    );
  }

  @override
  void dispose() {
    _searchFiled.dispose();
    super.dispose();
  }
}
