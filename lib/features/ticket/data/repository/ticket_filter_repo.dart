import 'package:task_5/core/util/myimage.dart';
import 'package:task_5/features/ticket/data/models/ticket_brand.dart';

class TicketFilterRepo {
  final ticketBrands= [
    TicketBrand(id: 01, title: "Gain", image: MyImage.consultationIconImg, isSelected: false),
    TicketBrand(id: 02, title: "Tech Solution", image: MyImage.consultationIconImg, isSelected: true),
    TicketBrand(id: 03, title: "Coppanet Limited", image: MyImage.consultationIconImg, isSelected: false),
  ];

  static const ticketPriorites = ["Low","Urgent","Medium","High"];

  static const ticketTags = ["Tag one", "Tag two","Tag three with text","Tag fourth","Tag null","Tag Loooooong text","tag"];
}