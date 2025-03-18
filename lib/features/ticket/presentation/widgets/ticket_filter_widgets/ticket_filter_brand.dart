import 'package:flutter/material.dart';
import 'package:task_5/core/util/mydimens.dart';
import 'package:task_5/features/ticket/data/repository/ticket_filter_repo.dart';

class TicketFilterBrand extends StatelessWidget {
  const TicketFilterBrand({super.key, required this.selectedBrand});
  final ValueNotifier<int?> selectedBrand;

  @override
  Widget build(BuildContext context) {
    final brands = TicketFilterRepo().ticketBrands;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyDimens().getBodyTitleText("Brand", context),
        const SizedBox(height: 10),
        ...List.generate(
          brands.length,
          (i) => Row(
            children: [
              ValueListenableBuilder(
                valueListenable: selectedBrand,
                builder: (context,value,_) {
                  return Checkbox(
                    value: value==i,
                    onChanged: (val) =>selectedBrand.value=i
                  );
                }
              ),
              Image.asset(brands[i].image),
              const SizedBox(width: 5),
              Text(brands[i].title),
            ],
          ),
        ),
      ],
    );
  }
}
