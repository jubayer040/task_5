import 'package:task_5/core/util/myimage.dart';
import 'package:task_5/features/contact/data/models/contact_item.dart';

class ContactRepo {
  final contacts = [
    ContactItem(
      id: 1,
      name: "Michael Brenson",
      email: "michale12@gmail.com",
      contact: "+8801459871236",
      address: "Pallabi Eastern Housing,Mirpur ",
      image: MyImage.placeholderImg,
    ),
    ContactItem(
      id: 2,
      name: "Jim Maccorthy",
      email: "michale12@gmail.com",
      contact: "+8801459871236",
      address: "Pallabi Eastern Housing,Mirpur ",
      image: MyImage.placeholderImg,
    ),
    ContactItem(
      id: 3,
      name: "Dwight Schrute",
      email: "michale12@gmail.com",
      contact: "+8801459871236",
      address: "Pallabi Eastern Housing,Mirpur ",
      image: MyImage.placeholderImg,
    ),
    ContactItem(
      id: 4,
      name: "Jhony Cash",
      email: "michale12@gmail.com",
      contact: "+8801459871236",
      address: "Pallabi Eastern Housing,Mirpur ",
      image: MyImage.placeholderImg,
    ),
  ];
}
